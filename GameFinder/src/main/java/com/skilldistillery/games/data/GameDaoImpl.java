package com.skilldistillery.games.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.games.entities.Game;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;


@Service
@Transactional
public class GameDaoImpl implements GameDAO {

	// no em.close
	// no em.getTransaction.begin/commit (because of @Transactional)

	@PersistenceContext
	private EntityManager em;

	@Override
	public Game findById(int gameId) {
		return em.find(Game.class, gameId);
	}

	@Override
	public List<Game> findAll() {
		String jpql = "SELECT g FROM Game g";
		return em.createQuery(jpql, Game.class).getResultList();
	}

	@Override
	public Game create(Game game) {
		System.out.println("Before persist " + game);
		em.persist(game);
		System.out.println("After persist " + game);
		System.out.println(game.getName() + " added");
		return game;
	}

	@Override
	public Game update(int gameId, Game game) {
		Game gameToUpdate = em.find(Game.class, gameId);

		if (gameToUpdate != null) {
			gameToUpdate.setName(game.getName());
			gameToUpdate.setCategory(game.getCategory());
			gameToUpdate.setActivePlayers(game.getActivePlayers());
			System.out.println(gameToUpdate + " was updated");
		}
		return gameToUpdate;
	}

	@Override
	public boolean deleteById(int gameId) {
		Game gameToDelete = em.find(Game.class, gameId);
		boolean gameDeleted = false;
		
		if (gameToDelete != null) {
			em.remove(gameToDelete);
			gameDeleted = !em.contains(gameToDelete);

			if (gameDeleted = true) {
				System.out.println("Game deleted");
			}
		}
		return gameDeleted;
	}

}
