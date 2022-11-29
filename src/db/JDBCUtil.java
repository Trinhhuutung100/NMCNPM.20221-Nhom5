/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Vo Hoang
 */

public class JDBCUtil {
	public static Connection getConnection() {
		Connection c = null;
		try {
			// dang ky mysql driver voi drivermanager
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());

			// cac thong so
			String DB_URL = "jdbc:mySQL://localhost:3306/nmcnpm";
			String username = "root";
			String password = "";

			// tao ket noi
			c = DriverManager.getConnection(DB_URL, username, password);
		} catch (SQLException e) {
		}
		return c;
	}

	public static void closeConnection(Connection c) {
		try {
			if (c != null) {
				c.close();
			}
		} catch (SQLException e) {
		}
	}
}
