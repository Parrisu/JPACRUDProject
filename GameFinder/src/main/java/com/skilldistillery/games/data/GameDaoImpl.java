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
	
	@PersistenceContext
	private EntityManager em;
	

	@Override
	public Game findById(int gameId) {

		return null;
	}

	@Override
	public List<Game> findAll() {
		String jpql = "SELECT g FROM Game g";
		return em.createQuery(jpql, Game.class).getResultList();
	}

	@Override
	public Game create(Game game) {

		return null;
	}

	@Override
	public Game update(int gameId, Game game) {

		return null;
	}

	@Override
	public boolean deleteById(int gameId, Game game) {

		return false;
	}

}
