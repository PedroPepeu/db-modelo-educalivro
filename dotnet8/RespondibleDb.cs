namespace EducaLivroResponsible.DB 
{
    public record Responsible
    {
        public string ? responsible_name{get; set;}
        public string ? email{get; set;}
        public string ? cpf{get; set;}
    }

    public class ResponsibleDB
    {
        public static List<Responsible> _responsible = new List<Responsible>() {
            new Responsible
            {
                responsible_name="Narome Taxi",
                email="naromeTaxi@gmail.com",
                cpf="123654987-12"
            }
        };

        public static List<Responsible> GetResponsibles()
        {
            return _responsible;
        }

        public static Responsible? GetResponsible(string cpf)
        {
            return _responsible.SingleOrDefault(responsible => responsible.cpf == cpf);
        }

        public static Responsible CreateResponsible(Responsible responsible)
        {
            _responsible.Add(responsible);
            return responsible;
        }

        public static Responsible UpdateResponsible(Responsible update)
        {
            _responsible = _responsible.Select(responsible =>
            {
                if(responsible.cpf == update.cpf)
                {
                    responsible.responsible_name = update.responsible_name;
                    responsible.email = update.email;
                }
                return responsible;
            }).ToList();
            return update;
        }

        public static void RemoveResponsible(string cpf)
        {
            _responsible = _responsible.FindAll(responsible => responsible.cpf != cpf).ToList();
        }
    }
}