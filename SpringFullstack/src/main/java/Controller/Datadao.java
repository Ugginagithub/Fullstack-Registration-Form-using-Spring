package Controller;

import java.util.List;

public interface Datadao {
	public List<StudentEntity> getdata();
	public void savedata(StudentEntity student);
	public void deleteItem(StudentEntity student);
}
