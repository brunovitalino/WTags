package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class VisitanteDao
{
	public List<Visitante> listar()
	{
		Connection conexao = null;
		String comandoSQL = "";
		PreparedStatement pst = null;
		ResultSet rs = null;
		List<Visitante> visitantes = new ArrayList<Visitante>();
		
		comandoSQL =	"SELECT * FROM Visitante;";
		
		try
		{
			conexao = new ConexaoFactory().getConexao();
			pst = conexao.prepareStatement(comandoSQL);
			rs = pst.executeQuery();
			while (rs.next())
			{
				Visitante visitante = new Visitante();
				visitante.setNome(rs.getString("nome"));
				visitante.setTelefone(rs.getString("telefone"));
				visitante.setEmail(rs.getString("email"));
				visitante.setMensagem(rs.getString("mensagem"));
				visitantes.add(visitante);
			}
		}
		catch (SQLException e)
		{
			System.out.println("Nao foi possivel estabelecer uma conexao.");
			//e.printStackTrace();
		}
		return visitantes;
	}
}
