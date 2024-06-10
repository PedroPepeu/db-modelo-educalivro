-- Create security policy function
CREATE FUNCTION student_security_policy()
RETURNS BOOLEAN
AS $$
BEGIN
    IF current_user = 'admin' THEN
        RETURN TRUE;
    ELSEIF current_user = 'editor' THEN
        RETURN student.idNum = current_setting('app.current_user_id', TRUE)::VARCHAR;
    ELSE
        RETURN FALSE;
    END IF;
END;
$$ LANGUAGE plpgsql;

-- Apply security policy to student table
CREATE POLICY student_security_policy
ON student
FOR ALL
USING (student_security_policy());

-- Set current user ID for editors
SET app.current_user_id = '12345';
