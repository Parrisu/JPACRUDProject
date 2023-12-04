package com.skilldistillery.games.client;

import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.skilldistillery.games.data.GameDaoImpl;
import com.skilldistillery.games.entities.Game;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.PersistenceContext;


public class GameDaoTest {

	@PersistenceContext
	private static EntityManager em;

	public static void main(String[] args) {
		GameDaoTest gdt = new GameDaoTest();
		gdt.addGame();
	}

	public void addGame() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPAGames");
		em = emf.createEntityManager();
		GameDaoImpl gameDao = new GameDaoImpl();
//		Game game = new Game("TESTTTT", 1);
//		em.persist(game);

	}

}
