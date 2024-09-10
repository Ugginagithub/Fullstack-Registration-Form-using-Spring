package Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class Datadaoimp implements Datadao {
	@Autowired
	JdbcTemplate jdbct;

	@Override
	public List<StudentEntity> getdata() {
		
		String query="select * from studentdata";
		
		return this.jdbct.query(query,new StudentMapper());
	}

	@Override
	public void savedata(StudentEntity student) {
		String query="insert into studentdata values(?,?,?,?,?,?)";
		jdbct.update(query,student.getId(),student.getName(),student.getPhone_number(),student.getAddress(),student.getGender(),student.getCountry());
	}

	@Override
	public void deleteItem(StudentEntity student) {
		String query="delete from studentdata where id=?";
		jdbct.update(query,student.getId());
	}

}
