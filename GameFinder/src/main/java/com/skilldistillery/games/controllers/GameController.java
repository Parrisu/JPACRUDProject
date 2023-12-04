package com.skilldistillery.games.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.games.data.GameDAO;
import com.skilldistillery.games.entities.Category;
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

	@RequestMapping(path = "getGame.do")
	public String showGame(@RequestParam("gameId") Integer gameId, Model model) {
		Game game = gameDao.findById(gameId);
		model.addAttribute("game", game);
		return "game/details";
	}
	
	@RequestMapping(path = "add.do")
	public String addPage() {
		return "add";
	}
	
	@RequestMapping(path = "addGame.do")
	public String addGame(@RequestParam("name") String name,@RequestParam("category") String category,
			@RequestParam("active") int active, Model model) {
		Category type;
		if(category.equals("fps")) {
			type = Category.FPS;
		} else if (category.equals("moba")) {
			type = Category.MOBA;
		}else if (category.equals("mmorpg")) {
			type = Category.MMORPG;
		}else {
			type = Category.RPG;
		}
		
		Game game = new Game(name, type, active);
		gameDao.create(game);
		model.addAttribute("games", gameDao.findAll());
		return "home";
	}
	
	@RequestMapping(path = "updateGame.do")
	public String updateGame(@RequestParam("name")String name, @RequestParam("id")int id, Model model) {
		Game game = gameDao.findById(id);
		game.setName(name);
		gameDao.update(id, game);
		model.addAttribute("games", gameDao.findAll());
		return "home";
	}
	
	@RequestMapping(path = "deleteGame.do")
	public String deleteGame(@RequestParam("delete")int id, Model model) {
		gameDao.deleteById(id);
		model.addAttribute("games", gameDao.findAll());
		return "home";
	}


}
