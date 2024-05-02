package BancoDeDados.Proejeto.EducaLivros.Teste;

import java.util.Scanner;

public class Login {
    private final String admLogin;
    private final String admPassword;

    public Login() {
    this.admLogin = "admin";
    this.admPassword = "000";
   
        
    }

    private boolean checkingAdmLogin(String user, String password){
        System.out.println("Favor inserir as credencias do administrador");
        if(user.equals(this.admLogin) && password.equals(this.admPassword)){
            return true;
        }
        return false;
    }

    public void loginLogic(){
        Scanner sc = new Scanner(System.in);
        System.out.println("Favor inserir usuario de login");
		String user = sc.nextLine();
		System.out.println("Favor inserir senha para login");
		String password = sc.nextLine();
        if(!checkingAdmLogin(user, password)){
            System.out.println("Credenciais incorretas desligando programa");
            System.exit(0);
        }
    }

    public void loginAdminOpeningScreen(){
        System.out.println("Seja bem vindo administrador qual informação deseja receber");
        System.out.println("1. Quais autores e livros são mais buscados pelos alunos?");
        System.out.println("2. Quantos livros um aluno comprou durante o ano letivo?");
        System.out.println("3. Existem salas com muito mais alunos que outras?");
        System.out.println("4. Nos dormitorios, encontram-se mais ou exclusivamente, pessoas do genero masculino ou feminino?");
        System.out.println("5. Os livros sao, em sua maioria, comprados ou emprestados?");
        System.out.println("6. Qual o tamanho do uniforme que a maioria dos estudantes usa em cada ano?");
        Scanner sc = new Scanner(System.in);
        int input = sc.nextInt();

        switch (input){
            case 1:

            break;
            case 2:
            break;
            case 3:
            break;
            case 4:
            break;
            case 5:
            break;
            case 6:
            break;
        }
    }
    
}
