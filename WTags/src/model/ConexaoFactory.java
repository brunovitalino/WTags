package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoFactory
{
	
	public Connection getConexao()
	{
		Connection conexao = null;
		
		/*try {
			Class.forName("com.sql.jdbc.Driver");*/
			try
			{
				conexao = DriverManager.getConnection("jdbc:mysql:localhost/wtags", "root", "");
			}
			catch (SQLException e)
			{
				//e.printStackTrace();
				System.out.println("ERRO2. Nao foi possivel se conectar.");
				throw new RuntimeException(e);
			}
		/*} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			System.out.println("ERRO1. Conector nao localizado");
			e1.printStackTrace();
		}*/
		
		return conexao;
	}

}
