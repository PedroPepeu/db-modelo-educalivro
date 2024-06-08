namespace EducaLivroOnlineAccount.DB
{
    public record OnlineAccount
    {
        public string ? account_name{get; set;}
        public string ? account_email{get; set;}
        public string ? account_cpf{get; set;}
        public string ? account_adrss{get; set;}
        public string ? idNum{get; set;}
    }

    public class OnlineAccountDB
    {
        public static List<OnlineAccount> _onlineaaccount = new List<OnlineAccount>()
        {
            new OnlineAccount
            {
                account_name="Jhon Jhon",
                account_email="jhon@gmail.com",
                account_cpf="987234534-12",
                account_adrss="Longe d+ fi",
                idNum="00000854679"
            }
        };

        public static List<OnlineAccount> GetOnlineAccounts()
        {
            return _onlineaaccount;
        }

        public static OnlineAccount? GetOnlineAccount(string idNum)
        {
            return _onlineaaccount.SingleOrDefault(onlineAccount => onlineAccount.idNum == idNum);
        }

        public static OnlineAccount CreateOnlineAccount(OnlineAccount onlineAccount)
        {
            _onlineaaccount.Add(onlineAccount);
            return onlineAccount;
        }

        public static OnlineAccount UpdateOnlineAccount(OnlineAccount update)
        {
            _onlineaaccount = _onlineaaccount.Select(onlineAccount =>
            {
                if(onlineAccount.idNum == update.idNum)
                {
                    onlineAccount.account_name = update.account_name;
                    onlineAccount.account_email = update.account_email;
                    onlineAccount.account_cpf = update.account_cpf;
                    onlineAccount.account_adrss = update.account_adrss;
                }
                return onlineAccount;
            }).ToList();
            return update;
        }

        public static void RemoveOnlineAccount(string idNum)
        {
            _onlineaaccount = _onlineaaccount.FindAll(onlineAccount => onlineAccount.idNum != idNum).ToList();
        }
    }
}