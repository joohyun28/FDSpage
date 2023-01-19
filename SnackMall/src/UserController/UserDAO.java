package UserController;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private Connection conn; 
	private PreparedStatement pstmt; 
	private ResultSet rs;

public UserDAO() { //try catch 문을 통해 예외 처리 
	try { 
		String DB_URL = "jdbc:mysql://localhost:3306/snackmall?characterEncoding=UTF-8&serverTimezone=UTC"; 
		String userName = "root"; 
		String password = "23er"; 
		Class.forName("com.mysql.jdbc.Driver"); 
		conn = DriverManager.getConnection(DB_URL,userName,password); 
		} 
	catch(Exception e) { 
		e.printStackTrace(); 
		} 
	}
	public int LoginCheck(String ID, String PWD) {
		String sql = "SELECT PWD FROM login_db WHERE ID=?"; 
		try { 
			pstmt = conn.prepareStatement(sql); 
			pstmt.setString(1, ID); // sql 문에서 ?에 해당하는 값에 userID를 집어넣음 첫번째 물음표일 경우 1 두번째 물음표이면 2이런식으로 
			rs = pstmt.executeQuery(); // sql 수행결과를 rs에 저장(Boolean) 존재시 true 존재x = false

			if(rs.next()) { 
				if(rs.getString(1).contentEquals(PWD)) { // ?로 사용자에게 받은 ID와 비밀번호가 일치하는 경우
					return 1; //로그인 성공
				} 
				else 
					return 0; //Password오류
			} //만약 존재할 시 
			return -1; //ID오류
		} catch(Exception e) { 
			e.printStackTrace(); 
		} 
		return -2; //db오류
	} 
	
}
