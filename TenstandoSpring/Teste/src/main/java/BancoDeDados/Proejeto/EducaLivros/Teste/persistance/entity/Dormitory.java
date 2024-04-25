package BancoDeDados.Proejeto.EducaLivros.Teste.persistance.entity;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;


@Entity

public class Dormitory {

    @Id
    @Column(name = "idnum", length = 30)
    private String idNum;

    @Column(name = "street_dormitory", length = 30)
    private String streetDormitory;

    @Column(name = "floor_dormitory")
    private int floorDormitory;

    @Column(name = "bedroom_number_dormitory")
    private int bedroomNumberDormitory;

    @OneToOne(mappedBy = "dormitory", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JsonManagedReference
    private Student student;

    public String getIdNum() {
        return idNum;
    }

    public void setIdNum(String idNum) {
        this.idNum = idNum;
    }

    public String getStreetDormitory() {
        return streetDormitory;
    }

    public void setStreetDormitory(String streetDormitory) {
        this.streetDormitory = streetDormitory;
    }

    public int getFloorDormitory() {
        return floorDormitory;
    }

    public void setFloorDormitory(int floorDormitory) {
        this.floorDormitory = floorDormitory;
    }

    public int getBedroomNumberDormitory() {
        return bedroomNumberDormitory;
    }

    public void setBedroomNumberDormitory(int bedroomNumberDormitory) {
        this.bedroomNumberDormitory = bedroomNumberDormitory;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    // Getters and setters...
}
