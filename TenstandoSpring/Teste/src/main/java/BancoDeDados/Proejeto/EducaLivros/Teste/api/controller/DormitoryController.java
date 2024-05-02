package BancoDeDados.Proejeto.EducaLivros.Teste.api.controller;
import org.springframework.web.bind.annotation.RestController;

import BancoDeDados.Proejeto.EducaLivros.Teste.persistance.entity.Dormitory;
import BancoDeDados.Proejeto.EducaLivros.Teste.service.DormitoryService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;

@RestController
@RequestMapping(path = "api/v1/dormitory")
public class DormitoryController {
    @Autowired
    private final DormitoryService dormitoryService;

    @Autowired
    public DormitoryController(DormitoryService dormitoryService){
        this.dormitoryService = dormitoryService;
    }

    @GetMapping
	public List<Dormitory> start(){
	return dormitoryService.getDormitory();
	}
}
