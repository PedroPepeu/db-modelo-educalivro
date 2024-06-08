namespace EducaLivroStudent.DB
{
    public record Student
    {
        public string ? student_first_name{get; set;}
        public string ? student_second_name{get; set;}
        public string ? cpf{get; set;}
        public string ? idNum{get; set;} 
        public string ? dt_birth{get; set;}
        public string ? email{get; set;}
        public char sex{get; set;}
        public float total_worload{get; set;}
        public string ? cloth_size{get; set;}
        public string ? zip_code{get; set;}
        public string ? complement{get; set;}
        public string ? FK_STUDENT_SUBJECT_idNum{get; set;}
        public string ? dt_start{get; set;}
        public string ? FK_DORMITORY_idNum{get; set;}
    }

    public class StudentDB
    {
        private static List<Student> _students = new List<Student>()
        {
            new Student
            {
                    student_first_name = "Pedro",
                    student_second_name = "Pepeu",
                    cpf = "123.456.789-01",
                    idNum = "00000844503",
                    dt_birth = "30/09/2004",
                    email = "pedrohamurabe@gmail.com",
                    sex = 'M',
                    total_worload = 200.0f,
                    cloth_size = "M",
                    zip_code = "12345-678",
                    complement = "Apt. 777",
                    FK_STUDENT_SUBJECT_idNum = "10000234567",
                    dt_start = "01/01/2021",
                    FK_DORMITORY_idNum = "12000234567"
                },
                new Student
                {
                    student_first_name = "Iago",
                    student_second_name = "Onii-chan",
                    cpf = "123.456.789-01",
                    idNum = "00000866503",
                    dt_birth = "03/12/2002",
                    email = "iagofofinho@gmail.com",
                    sex = 'M',
                    total_worload = 200.0f,
                    cloth_size = "M",
                    zip_code = "12345-678",
                    complement = "Apt. 777",
                    FK_STUDENT_SUBJECT_idNum = "10000234567",
                    dt_start = "01/01/2021",
                    FK_DORMITORY_idNum = "12000234567"
                }
        };

        public static List<Student> GetStudents()
        {
            return _students;
        }

        public static Student? GetStudent(string idNum)
        {
            return _students.SingleOrDefault(student => student.idNum == idNum);
        }

        public static Student CreateStudent(Student student)
        {
            _students.Add(student);
            return student;
        }

        public static Student UpdateStudent(Student update)
        {
            _students = _students.Select(student =>
            {
                if (student.idNum == update.idNum)
                {
                    student.student_first_name = update.student_first_name;
                    student.student_second_name = update.student_second_name;
                    student.cpf = update.cpf;
                    student.dt_birth = update.dt_birth;
                    student.email = update.email;
                    student.sex = update.sex;
                    student.total_worload = update.total_worload;
                    student.cloth_size = update.cloth_size;
                    student.zip_code = update.zip_code;
                    student.complement = update.complement;
                    student.FK_STUDENT_SUBJECT_idNum = update.FK_STUDENT_SUBJECT_idNum;
                    student.dt_start = update.dt_start;
                    student.FK_DORMITORY_idNum = update.FK_DORMITORY_idNum;
                }
                return student;
            }).ToList();
            return update;
        }

        public static void RemoveStudent(string idNum)
        {
            _students = _students.FindAll(student => student.idNum != idNum).ToList();
        }
    }

}
