package BancoDeDados.Proejeto.EducaLivros.Teste.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import BancoDeDados.Proejeto.EducaLivros.Teste.persistance.entity.Student;
import BancoDeDados.Proejeto.EducaLivros.Teste.service.StudentService;

@RestController
@RequestMapping(path = "api/v1/student")
public class StudentController {
    @Autowired
    private final StudentService studentService;

    @Autowired
    public StudentController(StudentService studentService){
        this.studentService = studentService;
    }

    @GetMapping
	public List<Student> hello(){
	return studentService.getStudents();
	}

    @PostMapping
    public void registerNewStudent(@RequestBody Student student){
        studentService.addNewStudent(student);
    }

    @DeleteMapping(path = "{idNum}")
    public void deleteStudent(@PathVariable("idNum") String idNum){
        studentService.deleteStudent(idNum);
    }

 

    @PutMapping(path = "{idNum}")
    public void updateStudant(@PathVariable("idNum") String idNum,
    @RequestParam(required = false) String email){
        studentService.updateStudentEmail(idNum, email);
    }
}

