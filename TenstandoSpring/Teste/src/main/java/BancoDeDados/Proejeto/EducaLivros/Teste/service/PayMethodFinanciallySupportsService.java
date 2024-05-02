package BancoDeDados.Proejeto.EducaLivros.Teste.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BancoDeDados.Proejeto.EducaLivros.Teste.persistance.entity.PayMethodFinanciallySupports;
/* import BancoDeDados.Proejeto.EducaLivros.Teste.persistance.entity.Student; */
import BancoDeDados.Proejeto.EducaLivros.Teste.persistance.repository.PayMethodFinanciallySupportsRepository;
/* import jakarta.transaction.Transactional; */

@Service
public class PayMethodFinanciallySupportsService {
    private final PayMethodFinanciallySupportsRepository pmRepo;

    @Autowired
    public PayMethodFinanciallySupportsService(PayMethodFinanciallySupportsRepository pmRepo){
        this.pmRepo = pmRepo;
    }

        public List<PayMethodFinanciallySupports> getPM(){
		return pmRepo.findAll();
	}
    
    public void addNewPayMethod(PayMethodFinanciallySupports newPM) {
		Optional<PayMethodFinanciallySupports> payMethodOptional = pmRepo.findPayMethodByCryptoWalletNumber(newPM.getCryptoWalletNumber());
		if(payMethodOptional.isPresent()){
			throw new IllegalStateException("Id already exists");
		}
		pmRepo.save(newPM);
    }

    public void deletePayMethod(String payMethodId) {
		if(pmRepo.existsById(payMethodId)){
			pmRepo.deleteById(payMethodId);
		}else{
			throw new IllegalStateException("Student with id " + payMethodId + " , not found in database");
		}
	}

/*     @Transactional
	public void updateStudentEmail(String studentId, String eamil ){
		Student student = new Student();
		if(payMethodFinanciallySupportsRepository.existsById(studentId)){
			student = payMethodFinanciallySupportsRepository.findById(studentId).get();
			student.setEmail(eamil);
		}else{
			throw new IllegalStateException("Student with id " + studentId + " , not found in database");
		}
	} */
}


