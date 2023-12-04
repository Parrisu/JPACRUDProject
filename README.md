# JPACRUDProject

## Description
This project is a full-stack Spring MVC web application that allows users to search, create, update, or delete video games.

## Technologies Used
Java, OOP, Eclipse, HTML, CSS, Spring Tool Suite 4, MAMP, MySQL, JPA, Spring Boot MVC

## Lessons Learned

This project caught me by surprise with the amount of trial and error I went through.

By far the hardest part for me was getting my `@Transactional` annotation to `persist` data back to the database. I eventually learned that using `@PersistenceContext` allowed me to remove `EntityManagerFactory` and stop doing things the long and hard way. The `@Transactional` annotation allows Spring to handle the transactions automatically, so my manual methods were conflicting with it's process.

My second biggest lesson was using the `@ResuestParam("param") <T> var`. Most of my searching through forums led me to believe I could not take in more than two parameters in my methods, so I was stuck scratching my head for a while. This was until I found a small comment saying you could just use it again. It was here I was finally able to implement the full powers of updating data with more than just the name.

Even with these, my proudest moment was using `c:when` inside of my `update.jsp` to automatically check specific radios depending on what game was being updated. I then preset the values of the game's name and active players using the `${}` Expression Language. Seeing this come to life on the page was a beauty of it's own.

## How to Use

The home page will populate with the current list of games inside of the database.
Use the links to search for a game by their `id` or add a game.
If you would like to see some details, click the game's name to be redirected to a detail page.
Here you can choose to update or delete the game.

Thanks for checking it out!
-Parris