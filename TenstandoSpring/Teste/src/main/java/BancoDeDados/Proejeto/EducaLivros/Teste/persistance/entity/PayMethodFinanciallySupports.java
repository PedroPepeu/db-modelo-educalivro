package BancoDeDados.Proejeto.EducaLivros.Teste.persistance.entity;



import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;


@Entity

public class PayMethodFinanciallySupports {

    @Id
    @Column(name = "crypto_wallet_number", length = 30)
    private String cryptoWalletNumber;

    @ManyToOne
    @JoinColumn(name = "FK_RESPONSIBLE_cpf", referencedColumnName = "cpf", foreignKey = @jakarta.persistence.ForeignKey(name = "FK_PAY_METHOD_FINANCIALLY_SUPPORTS_1", foreignKeyDefinition = "FOREIGN KEY (FK_RESPONSIBLE_cpf) REFERENCES RESPONSIBLE(cpf)"))
    private Responsible responsible;

    @ManyToOne
    @JoinColumn(name = "FK_STUDENT_idnum", referencedColumnName = "idnum", foreignKey = @jakarta.persistence.ForeignKey(name = "FK_PAY_METHOD_FINANCIALLY_SUPPORTS_2", foreignKeyDefinition = "FOREIGN KEY (FK_STUDENT_idnum) REFERENCES STUDENT(idnum)"))
    private Student student;

    public String getCryptoWalletNumber() {
        return cryptoWalletNumber;
    }

    public void setCryptoWalletNumber(String cryptoWalletNumber) {
        this.cryptoWalletNumber = cryptoWalletNumber;
    }

    public Responsible getResponsible() {
        return responsible;
    }

    public void setResponsible(Responsible responsible) {
        this.responsible = responsible;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    // Getters and setters...
}