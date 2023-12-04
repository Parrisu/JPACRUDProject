package com.skilldistillery.games.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.fail;

import java.time.Month;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class GameTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Game game;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAGames");
		
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		game = em.find(Game.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		game = null;
	}

	@Test
	void test_game_name() {
		assertNotNull(game);
		assertEquals("League of Legends", game.getName());
	}
	
	@Test
	void test_active_players() {
		assertNotNull(game);
		assertEquals(180000000, game.getActivePlayers()); 
	}
	
	@Test
	void test_current_price_mapping() {
		assertNotNull(game);
	}
	
	@Test
	void test_category_mapping() {
		assertNotNull(game);
		assertEquals(Category.MOBA, game.getCategory());
	}
	
	@Test
	void test_release_price_mapping() {
		assertNotNull(game);
		assertEquals(0.0, game.getReleasePrice());
	}
	@Test
	void test_release_date_mapping() {
		assertNotNull(game);
		assertEquals(27, game.getReleaseDate().getDayOfMonth());
		assertEquals(Month.OCTOBER, game.getReleaseDate().getMonth());
		assertEquals(2009, game.getReleaseDate().getYear());
	}

}
