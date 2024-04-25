package BancoDeDados.Proejeto.EducaLivros.Teste.persistance.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity
@Table
public class Responsible {

    @Id
    @Column(name = "cpf", length = 30)
    private String cpf;

    @Column(name = "responsible_name", length = 30)
    private String responsibleName;

    @Column(name = "email", length = 30)
    private String email;

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getResponsibleName() {
        return responsibleName;
    }

    public void setResponsibleName(String responsibleName) {
        this.responsibleName = responsibleName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    // Getters and setters...
}
