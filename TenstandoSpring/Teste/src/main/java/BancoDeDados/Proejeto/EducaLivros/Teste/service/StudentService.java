package BancoDeDados.Proejeto.EducaLivros.Teste.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BancoDeDados.Proejeto.EducaLivros.Teste.persistance.entity.Student;
import BancoDeDados.Proejeto.EducaLivros.Teste.persistance.repository.StudentRepository;
import jakarta.transaction.Transactional;

@Service
public class StudentService {
    private final StudentRepository studentRepository;

    @Autowired
    public StudentService(StudentRepository studentRepository){
        this.studentRepository = studentRepository;
    }

        public List<Student> getStudents(){
		return studentRepository.findAll();
	}
    
    public void addNewStudent(Student student) {
		Optional<Student> studentOptional = studentRepository.findStudentByidNum(student.getIdNum());
		if(studentOptional.isPresent()){
			throw new IllegalStateException("Id already exists");
		}
		studentRepository.save(student);
    }

    public void deleteStudent(String studentId) {
		if(studentRepository.existsById(studentId)){
			studentRepository.deleteById(studentId);
		}else{
			throw new IllegalStateException("Student with id " + studentId + " , not found in database");
		}
	}

    @Transactional
	public void updateStudentEmail(String studentId, String eamil ){
		Student student = new Student();
		if(studentRepository.existsById(studentId)){
			student = studentRepository.findById(studentId).get();
			student.setEmail(eamil);
		}else{
			throw new IllegalStateException("Student with id " + studentId + " , not found in database");
		}
	}
}
