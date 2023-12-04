package com.skilldistillery.games.entities;

import java.time.LocalDate;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Game {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;

	@Enumerated(EnumType.STRING)
	private Category category;

	@Column(name = "release_date")
	private LocalDate releaseDate;

	@Column(name = "release_price")
	private Double releasePrice;

	@Column(name = "current_price")
	private Double currentPrice;

	@Column(name = "active_players")
	private int activePlayers;

	@Column(name = "image_url")
	private String imageLink;

	public Game() {
	}

	public Game(String name, Category category, int activePlayers) {
		super();
		this.name = name;
		this.category = category;
		this.activePlayers = activePlayers;
	}









	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public LocalDate getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(LocalDate releaseDate) {
		this.releaseDate = releaseDate;
	}

	public Double getReleasePrice() {
		return releasePrice;
	}

	public void setReleasePrice(Double releasePrice) {
		this.releasePrice = releasePrice;
	}

	public Double getCurrentPrice() {
		return currentPrice;
	}

	public void setCurrentPrice(Double currentPrice) {
		this.currentPrice = currentPrice;
	}

	public int getActivePlayers() {
		return activePlayers;
	}

	public void setActivePlayers(int activePlayers) {
		this.activePlayers = activePlayers;
	}

	public String getImageLink() {
		return imageLink;
	}

	public void setImageLink(String imageLink) {
		this.imageLink = imageLink;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Game other = (Game) obj;
		return id == other.id;
	}

	@Override
	public String toString() {
		return "Game [id=" + id + ", name=" + name ;
	}
	
	

}
