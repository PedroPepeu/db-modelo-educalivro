-- Function to update total_books after insert
CREATE OR REPLACE FUNCTION update_department_books_after_insert()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE DEPARTMENT
    SET total_books = total_books + NEW.book_quantity
    WHERE idNum = NEW.FK_DEPARTMENT_idNum;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Function to update total_books after delete
CREATE OR REPLACE FUNCTION update_department_books_after_delete()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE DEPARTMENT
    SET total_books = total_books - OLD.book_quantity
    WHERE idNum = OLD.FK_DEPARTMENT_idNum;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

-- Trigger to call update_department_books_after_insert after insert
CREATE TRIGGER department_books_after_insert_trigger
AFTER INSERT ON LIBRARY_BOOKS
FOR EACH ROW
EXECUTE FUNCTION update_department_books_after_insert();

-- Trigger to call update_department_books_after_delete after delete
CREATE TRIGGER department_books_after_delete_trigger
AFTER DELETE ON LIBRARY_BOOKS
FOR EACH ROW
EXECUTE FUNCTION update_department_books_after_delete();
