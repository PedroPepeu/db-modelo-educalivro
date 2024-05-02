package BancoDeDados.Proejeto.EducaLivros.Teste.persistance.entity;
import java.time.LocalDate;

import javax.persistence.*;

@Entity
@Table(name = "LIBRARY_BOOKS")
public class LibraryBooks {

    @Id
    @Column(name = "idNum", length = 30)
    private String idNum;

    @Column(name = "book_edition")
    private int bookEdition;

    @Column(name = "book_gender", length = 30)
    private String bookGender;

    @Column(name = "book_synopsis", length = 30)
    private String bookSynopsis;

    @Column(name = "book_quantity")
    private int bookQuantity;

/*     @ManyToOne
    @JoinColumn(name = "FK_DEPARTMENT_idNum", referencedColumnName = "idNum", onDelete = CascadeType.RESTRICT)
    private Department department;

    @ManyToOne
    @JoinColumn(name = "FK_CLUBS_WORKER_idNum", referencedColumnName = "idNum", onDelete = CascadeType.RESTRICT)
    private ClubsWorker clubsWorker; */
 
    @Column(name = "dt_borrow_start")
    private LocalDate borrowStartDate;

    public String getIdNum() {
        return idNum;
    }

    public void setIdNum(String idNum) {
        this.idNum = idNum;
    }

    public int getBookEdition() {
        return bookEdition;
    }

    public void setBookEdition(int bookEdition) {
        this.bookEdition = bookEdition;
    }

    public String getBookGender() {
        return bookGender;
    }

    public void setBookGender(String bookGender) {
        this.bookGender = bookGender;
    }

    public String getBookSynopsis() {
        return bookSynopsis;
    }

    public void setBookSynopsis(String bookSynopsis) {
        this.bookSynopsis = bookSynopsis;
    }

    public int getBookQuantity() {
        return bookQuantity;
    }

    public void setBookQuantity(int bookQuantity) {
        this.bookQuantity = bookQuantity;
    }

    public LocalDate getBorrowStartDate() {
        return borrowStartDate;
    }

    public void setBorrowStartDate(LocalDate borrowStartDate) {
        this.borrowStartDate = borrowStartDate;
    }

    // Constructors, getters, and setters
}
