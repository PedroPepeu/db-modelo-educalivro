package BancoDeDados.Proejeto.EducaLivros.Teste.persistance.entity;


import java.util.Set;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity

public class StudentSubject {

    @Id
    @Column(name = "idnum", length = 30)
    private String idNum;

    @Column(name = "obligatoriness")
    private boolean obligatoriness;

    @Column(name = "total_hour_credit")
    private int totalHourCredit;

    @Column(name = "subject_value")
    private float subjectValue;

    @OneToMany(mappedBy = "studentSubject", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JsonManagedReference
    private Set<Student> students;

    public String getIdNum() {
        return idNum;
    }

    public void setIdNum(String idNum) {
        this.idNum = idNum;
    }

    public boolean isObligatoriness() {
        return obligatoriness;
    }

    public void setObligatoriness(boolean obligatoriness) {
        this.obligatoriness = obligatoriness;
    }

    public int getTotalHourCredit() {
        return totalHourCredit;
    }

    public void setTotalHourCredit(int totalHourCredit) {
        this.totalHourCredit = totalHourCredit;
    }

    public float getSubjectValue() {
        return subjectValue;
    }

    public void setSubjectValue(float subjectValue) {
        this.subjectValue = subjectValue;
    }

    public Set<Student> getStudents() {
        return students;
    }

    public void setStudents(Set<Student> students) {
        this.students = students;
    }

    // Getters and setters...
}
