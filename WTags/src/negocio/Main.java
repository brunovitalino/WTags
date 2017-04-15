package negocio;

import model.Visitante;
import model.VisitanteDao;

// Classe de teste jdbc
public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		System.out.println("LISTA \n");
		for (Visitante visitante : new VisitanteDao().listar())
		{
			System.out.println("Nome: "+visitante.getNome());
			System.out.println("Telefone: "+visitante.getTelefone());
			System.out.println();
		}
	}

}
