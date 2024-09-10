package Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	@Autowired
	Datadao datadao;
	
	@RequestMapping("/register")
	public String home() {
		
		return "home";
	}
	
	@RequestMapping(path="/formdata",method=RequestMethod.POST)
	public String submitForm(@ModelAttribute("student") StudentEntity student,Model model) {
		datadao.savedata(student);
		return "insert";
	}
	
	@RequestMapping("/delete")
	public String delete() {
		return "delete";
	}
	
	@RequestMapping(path="/deleteRecord",method=RequestMethod.POST)
	public String deleteItem(@ModelAttribute("student") StudentEntity student,Model model) {
		datadao.deleteItem(student);
		return "deleteItem";
	}
	
	@RequestMapping("/details")
	public String details(Model model) {
		model.addAttribute("data",datadao.getdata());
		return "details";
	}
}
