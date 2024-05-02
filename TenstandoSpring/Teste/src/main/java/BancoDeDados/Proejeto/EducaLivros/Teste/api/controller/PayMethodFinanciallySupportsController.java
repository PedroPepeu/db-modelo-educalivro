package BancoDeDados.Proejeto.EducaLivros.Teste.api.controller;
import org.springframework.web.bind.annotation.RestController;

import BancoDeDados.Proejeto.EducaLivros.Teste.persistance.entity.PayMethodFinanciallySupports;

import BancoDeDados.Proejeto.EducaLivros.Teste.service.PayMethodFinanciallySupportsService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;

@RestController
@RequestMapping(path = "api/v1/paymethod")
public class PayMethodFinanciallySupportsController {

    @Autowired
    private final PayMethodFinanciallySupportsService pmService;

    @Autowired
    public PayMethodFinanciallySupportsController(PayMethodFinanciallySupportsService pmService){
        this.pmService = pmService;
    }

    @GetMapping
    public List<PayMethodFinanciallySupports> start(){
        return pmService.getPM();
    }

    @PostMapping
    public void registerPM(@RequestBody PayMethodFinanciallySupports pm){
    pmService.addNewPayMethod(pm);
    }

    @DeleteMapping(path = "{cyptowalletnumber}")
    public void deletePM(@PathVariable("cyptowalletnumber") String cyptowalletnumber){
        pmService.deletePayMethod(cyptowalletnumber);
    }

/*     @PutMapping(path = "{idNum}")
    public void updateStudant(@PathVariable("idNum") String idNum,
    @RequestParam(required = false) String email){
        studentService.updateStudentEmail(idNum, email);
    } */
}
