package BancoDeDados.Proejeto.EducaLivros.Teste.persistance.entity;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonBackReference;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;

@Entity

public class Student {
    
    @Id
    @Column(name = "idnum", length = 30)
    private String idNum;
    
    @Column(name = "student_first_name", length = 30)
    private String firstName;
    
    @Column(name = "student_second_name", length = 30)
    private String secondName;
    
    @Column(name = "cpf", length = 30)
    private String cpf;
    
    @Column(name = "dt_birth")
    private Date birthDate;
    
    @Column(name = "email", length = 30)
    private String email;
    
    @Column(name = "sex")
    private char sex;
    
    @Column(name = "total_worload")
    private float totalWorkload;
    
    @Column(name = "cloth_size", length = 2)
    private String clothSize;
    
    @Column(name = "zip_code", length = 30)
    private String zipCode;
    
    @Column(name = "complement", length = 30)
    private String complement;
    
    @Column(name = "dt_start")
    private Date startDate;
    
    @OneToOne
    @JoinColumn(name = "FK_STUDENT_SUBJECT_idnum", referencedColumnName = "idnum")
    @JsonBackReference
    private StudentSubject studentSubject;
    
    @OneToOne
    @JoinColumn(name = "FK_DORMITORY_idnum", referencedColumnName = "idnum")
    @JsonBackReference
    private Dormitory dormitory;

    public String getIdNum() {
        return idNum;
    }

    public void setIdNum(String idNum) {
        this.idNum = idNum;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getSecondName() {
        return secondName;
    }

    public void setSecondName(String secondName) {
        this.secondName = secondName;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public char getSex() {
        return sex;
    }

    public void setSex(char sex) {
        this.sex = sex;
    }

    public float getTotalWorkload() {
        return totalWorkload;
    }

    public void setTotalWorkload(float totalWorkload) {
        this.totalWorkload = totalWorkload;
    }

    public String getClothSize() {
        return clothSize;
    }

    public void setClothSize(String clothSize) {
        this.clothSize = clothSize;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    public String getComplement() {
        return complement;
    }

    public void setComplement(String complement) {
        this.complement = complement;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public StudentSubject getStudentSubject() {
        return studentSubject;
    }

    public void setStudentSubject(StudentSubject studentSubject) {
        this.studentSubject = studentSubject;
    }

    public Dormitory getDormitory() {
        return dormitory;
    }

    public void setDormitory(Dormitory dormitory) {
        this.dormitory = dormitory;
    }
    
    // Getters and setters
}
