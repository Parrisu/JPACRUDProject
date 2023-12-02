package com.skilldistillery.games.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.games.data.GameDAO;
import com.skilldistillery.games.entities.Game;

@Controller
public class GameController {
	
	@Autowired
	private GameDAO gameDao;
	
	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
		model.addAttribute("games", gameDao.findAll());
		return "home";
	}

//	@RequestMapping(path = "getGame.do")
//	public String showFilm(@RequestParam("gameId") Integer gameId, Model model) {
//		Game game = gameDao.findById(gameId);
//		model.addAttribute("game", game);
//		return "";
//	}


}
