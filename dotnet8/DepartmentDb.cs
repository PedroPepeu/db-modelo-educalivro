namespace EducaLivroDepartment.DB
{
    public record Department
    {
        public string ? idNum{get; set;}
        public string ? department_name{get; set;}
        public string ? workers_number{get; set;}
        public string ? DEPARTMENT_TIPO{get; set;}
    }

    public class DepartmentDB
    {
        public static List<Department> _department = new List<Department>()
        {
            new Department
            {
                idNum="00000854679",
                department_name="esportes",
                workers_number="1234",
                DEPARTMENT_TIPO="4"
            }
        };

        public static List<Department> GetDepartment()
        {
            return _department;
        }

        public static Department? GetDepartment(string idNum)
        {
            return _department.SingleOrDefault(department => department.idNum == idNum);
        }

        public static Department CreateDepartment(Department department)
        {
            _department.Add(department);
            return department;
        }

        public static Department UpdateDepartment(Department update)
        {
            _department = _department.Select(department =>
            {
                if(department.idNum == update.idNum)
                {
                    department.department_name = update.department_name;
                    department.workers_number = update.workers_number;
                    department.DEPARTMENT_TIPO = update.DEPARTMENT_TIPO;
                }
                return department;
            }).ToList();
            return update;
        }

        public static void RemoveDepartment(string idNum)
        {
            _department = _department.FindAll(department => department.idNum != idNum).ToList();
        }
    }
}