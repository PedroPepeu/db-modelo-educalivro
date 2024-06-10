-- Create the update_student_email stored procedure
CREATE OR REPLACE PROCEDURE update_student_email(
    student_id VARCHAR,
    new_email VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Update the email address for the specified student
    UPDATE student
    SET email = new_email
    WHERE idNum = student_id;
    
    -- Check if any rows were affected by the update operation
    IF FOUND THEN
        RAISE NOTICE 'Email address updated for student with ID %', student_id;
    ELSE
        -- If no rows were affected, raise an error
        RAISE EXCEPTION 'No student found with ID %', student_id;
    END IF;
END;
$$;

-- Create the get_student_info_by_id stored procedure
CREATE OR REPLACE PROCEDURE get_student_info_by_id(
    student_id VARCHAR
)
LANGUAGE plpgsql
AS $$
DECLARE
    student_record RECORD;
BEGIN
    -- Fetch student information based on the provided ID
    SELECT *
    INTO student_record
    FROM student
    WHERE idNum = student_id;
    
    -- Check if the student exists
    IF FOUND THEN
        -- Return the student information
        RAISE NOTICE 'Student Found: %, %', student_record.student_first_name, student_record.student_second_name;
    ELSE
        -- If the student does not exist, raise an error
        RAISE EXCEPTION 'Student with ID % not found', student_id;
    END IF;
END;
$$;
