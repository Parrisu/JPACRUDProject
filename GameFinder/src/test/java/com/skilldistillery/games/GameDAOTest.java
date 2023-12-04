package com.skilldistillery.games;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.List;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import com.skilldistillery.games.data.GameDaoImpl;
import com.skilldistillery.games.entities.Category;
import com.skilldistillery.games.entities.Game;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;


@SpringBootTest
class GameDAOTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Game game;
	private GameDaoImpl gameDao;

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
		gameDao = new GameDaoImpl();
		game = new Game("Tester", Category.FPS, 50);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		game = null;
	}

	@Test
	void test_Game_basic_mappings() {
		assertNotNull(em.find(Game.class,1));
	}
	
	@Test
	void test_game_size() {
		List<Game> games = gameDao.findAll();
		assertEquals(3, games.size());
		
	}
	
	@Test
	void test_Create() {
		System.out.println(game);
		gameDao.create(game);
		System.out.println(game);
	}
	
	@Test
	void test_Update() {
		gameDao.update(4, game);
		System.out.println("Update: " + game);
	}
	@Test
	void test_Delete() {
		gameDao.deleteById(4);
		assertTrue(! gameDao.findAll().contains(game));
		System.out.println("Game removed successful");
		
	}
	


}
