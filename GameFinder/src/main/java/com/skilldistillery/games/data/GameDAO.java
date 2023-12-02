package com.skilldistillery.games.data;

import java.util.List;

import com.skilldistillery.games.entities.Game;

public interface GameDAO {

	Game findById(int gameId);
	public List<Game> findAll();
	
	Game create(Game game);
	Game update(int gameId, Game game);
	boolean deleteById(int gameId, Game game);
}
