package BancoDeDados.Proejeto.EducaLivros.Teste.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BancoDeDados.Proejeto.EducaLivros.Teste.persistance.entity.Dormitory;
import BancoDeDados.Proejeto.EducaLivros.Teste.persistance.repository.DormitoryRepository;

@Service
public class DormitoryService {
    private final DormitoryRepository dormitoryRepository;
    
    @Autowired
    public DormitoryService(DormitoryRepository dormitoryRepository){
        this.dormitoryRepository = dormitoryRepository;
    }

    public List<Dormitory> getDormitory(){
		return dormitoryRepository.findAll();
	}
}
