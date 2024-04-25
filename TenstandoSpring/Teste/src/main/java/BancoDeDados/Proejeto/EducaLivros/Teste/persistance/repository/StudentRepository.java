package BancoDeDados.Proejeto.EducaLivros.Teste.persistance.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import BancoDeDados.Proejeto.EducaLivros.Teste.persistance.entity.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student,String > {
    Optional<Student> findStudentByidNum(String idNum);
    
}
