package dao;

import dto.User;
import java.sql.*;

public class UserDAO {

	private String jdbcURL = "jdbc:mysql://localhost:3306/AnimalData"; // 데이터베이스 URL
    private String jdbcUsername = "root"; // 데이터베이스 사용자 이름
    private String jdbcPassword = "1234"; // 데이터베이스 비밀번호
    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;
    private static final String INSERT_USERS_SQL = "INSERT INTO Users (name, password) VALUES (?, ?);";

    public UserDAO() {
    	try {
			String dbURL = "jdbc:mysql://localhost:3306/AnimalData";
			String dbID = "root";
			String dbPassword = "1234";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch (Exception e) {
			e.printStackTrace();
		}
    }

/*   public void addUser(User user) {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getPassword());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            // 예외 처리
            e.printStackTrace();
        }
    }
    */
    
    public int login(String Name, String password) {
		String sql = "select password from users where name = ?";
		try {
			pstmt = conn.prepareStatement(sql); 
			pstmt.setString(1, Name);
			rs = pstmt.executeQuery(); 
			if(rs.next()) {
				if(rs.getString(1).equals(password)) {
					return 1; 
				}else
					return 0; 
			}
			return -1;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -2; 
	}
    public int join(User user) {
		String sql =  "INSERT INTO Users (name, password) VALUES (?, ?);";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getName());
			pstmt.setString(2, user.getPassword());
			
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	} 
    public String animal(String animal) {
        System.out.print(animal);
        String sql = "select personality from animal_member where name = ?";
        String result = "";

        try {
            pstmt = conn.prepareStatement(sql); 
            pstmt.setString(1, animal);
            rs = pstmt.executeQuery();

            if (rs.next()) {
               
                result = rs.getString(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        
        return result;
    }

}
