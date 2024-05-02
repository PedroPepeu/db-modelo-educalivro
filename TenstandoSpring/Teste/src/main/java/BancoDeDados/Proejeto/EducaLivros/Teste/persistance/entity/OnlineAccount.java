package BancoDeDados.Proejeto.EducaLivros.Teste.persistance.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;


@Entity

public class OnlineAccount {

    @Id
    @Column(name = "idnum", length = 30)
    private String idNum;

    @Column(name = "account_name", length = 30)
    private String accountName;

    @Column(name = "account_email", length = 30)
    private String accountEmail;

    @Column(name = "account_cpf", length = 30)
    private String accountCpf;

    @Column(name = "account_adrss", length = 30)
    private String accountAddress;

   /*  @ManyToOne  */
    @JoinColumn(name = "FK_STUDENT_idnum", referencedColumnName = "idnum")
    private Student student;

    /* @ManyToOne  */
    @JoinColumn(name = "FK_LIBRARY_BOOKS_idnum", referencedColumnName = "idnum")
    private LibraryBooks libraryBooks;

    public LibraryBooks getLibraryBooks() {
        return libraryBooks;
    }

    public void setLibraryBook(LibraryBooks libraryBooks) {
        this.libraryBooks = libraryBooks;
    }

    public String getIdNum() {
        return idNum;
    }

    public void setIdNum(String idNum) {
        this.idNum = idNum;
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    public String getAccountEmail() {
        return accountEmail;
    }

    public void setAccountEmail(String accountEmail) {
        this.accountEmail = accountEmail;
    }

    public String getAccountCpf() {
        return accountCpf;
    }

    public void setAccountCpf(String accountCpf) {
        this.accountCpf = accountCpf;
    }

    public String getAccountAddress() {
        return accountAddress;
    }

    public void setAccountAddress(String accountAddress) {
        this.accountAddress = accountAddress;
    }

    public Student getStudentIdNum() {
        return student;
    }

    public void setStudentIdNum(Student studentIdNum) {
        this.student = studentIdNum;
    }

    // Constructors, getters, and setters
}