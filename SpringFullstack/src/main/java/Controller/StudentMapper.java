package Controller;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class StudentMapper implements RowMapper<StudentEntity> {
	StudentEntity student=new StudentEntity();

	@Override
	public StudentEntity mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		StudentEntity student=new StudentEntity();
		student.setId(rs.getInt("id"));
		student.setName(rs.getString("name"));
		student.setPhone_number(rs.getInt("phone_number"));
		student.setAddress(rs.getString("Address"));
		student.setGender(rs.getString("gender"));
		student.setCountry(rs.getString("country"));
		return student;
	}

}
