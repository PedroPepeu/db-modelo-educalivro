package BancoDeDados.Proejeto.EducaLivros.Teste.persistance.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import BancoDeDados.Proejeto.EducaLivros.Teste.persistance.entity.Dormitory;
@Repository
public interface DormitoryRepository extends  JpaRepository<Dormitory,String > {
     Optional<Dormitory> findDormitoryByidNum(String idNum);

}
