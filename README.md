![Bitmaker](https://github.com/johncarlolopez/bitmaker-reference/blob/master/bitmakerlogo.svg)
# 02 - Object Oriented Programming: Classes and Objects
### Friday, Dec 15th

## Exercise 1: Bank Account
___

1. Create a ```BankAccount``` class
1. Every bank account should have ```balance``` and ```interest_rate``` attributes
  * At this point you should test out creating an instance of your class to make sure it works
3. Your class should have an instance method called ```deposit``` that accepts one ```amount``` argument and adds that amount to the total balance
  * Test out your method by calling it on an instance of your class
4. There should be a ```withdraw``` instance method that accepts one ```amount``` argument and subtracts it from the total balance
  * Don't forget to test it out!
5. Finally, there should be a ```gain_interest``` instance method that increases the total balance according to the interest rate.  

Once all of that is working, don't forget to commit!

## Exercise 2: The Cat's Meow
___
Since we're working toward the goal of building apps for the web, we may as well start with the one thing that the web wouldn't exist without: cats!

In this exercise, we're going to create a Cat class so we can populate our software with a menagerie of feline friends.

Start a new project (create a new subfolder) and add a new file called "cat.rb". Run your program and commit your work after each step.

1. Create a class called ```Cat```
2. Every cat should have three attributes when they're created: ```name```, ```preferred_food``` and ```meal_time```
  * Since we want these fields to be set for every Cat, you'll need to add an ```initialize``` method to your class
  * You can use ```irb``` to test out your class by loading your class into the console using the ```load``` method (i.e. ```load 'cat.rb'```) and then creating new instances of your class.
3. Create two instances of the Cat class in your file
  * They should each have unique names, preferred foods and meal times
  * Let's assume meal_time is an integer from 0 to 23
4. Add an instance method called ```eats_at``` that returns the hour of the day with AM or PM that this cat eats.
  * The return value should be something like "11 AM" or "3 PM"
5. Add another instance method called ```meow``` that returns a string of the cat telling you all about itself
  * The return value should be something like "My name is Sparkles and I eat tuna at 11 AM"
6. Call the meow method on each of the cats you instantiated in Step 3  

Once you're done, commit again!

## Exercise 3: Player
___
1. Create a class called ```Player```.
2. Every player should have three attributes: ```gold_coins```, ```health_points```, and ```lives```.
3. ```lives``` should start at 5.
4. ```gold_coins``` should start at 0.
5. ```health_points``` should start at 10.
6. Your class should have an instance method called ```level_up``` that increases ```lives``` by one.
7. Your class should have an instance method called ```collect_treasure``` that increases ```gold_coins``` by one. If ```gold_coins``` is a multiple of ten (eg, 10, 20, 30, and so on) then the ```collect_treasure``` method should run the ```level_up``` method.
8. Your class should have an instance method called ```do_battle``` that accepts one ```damage``` argument and subtracts it from the player's ```health_points```. If ```health_points``` falls below one, subtract one from ``lives`` and reset ```health_points``` to ten. If you have run out of lives, this method should run another method called ```restart``` (see below).
9. The ```restart``` instance method should set all attributes back to their starting values (5, 0, and 10).  

Don't forget to test out your code every step of the way by creating instances of your class and trying to run your different methods. You should be committing every time you get a new method working.

## Exercise 4: Paperboy
___
Back before the Internet existed, people used to have newspapers delivered to their homes. It was so popular that [one of the earliest video games was based on making sure you delivered papers to every house in a suburban neighbourhood](https://en.wikipedia.org/wiki/Paperboy_(video_game)).

Let's see if we can make a class that represents a paperboy and get them to deliver all of their papers on time!

Start a new project (create a new subfolder) and add a new file called **paperboy.rb**. Run your program and commit your work after each step.

Each paperboy should have several attributes:

  * Name
  * Experience (the number of papers they've delivered)
  * Earnings (amount of money they've earned)
    * This needs to be **read-only**!  

Every day, each paperboy is given a house number to start at and a house number to finish at. They get paid $0.25 for every paper they deliver and $0.50 for every paper over their quota. If at the end of the day they haven't met their quota, they lose $2.

The minimum number of papers to deliver is 50. The quota is calculated as half of your experience added to the minimum. So the first time a paperboy makes a delivery, the quota is 50. The next time, the quote is 50 plus half the number of papers that the paperboy has delivered in the past. In this way the quota should increase after every delivery the paperboy makes.

Each paperboy should have at least these methods:

  * ```quota```
    * This method should calculate and return the paperboy's quota for his next delivery
  * ```deliver(start_address, end_address)```
    * This method will take two house numbers and return the amount of money earned on this delivery as a floating point number. It should also update the paperboy's experience!
    * Let's assume that the ```start_address``` is always a smaller number than the ```end_address```
    * As a *stretch exercise* you can figure out how to ensure it still works if the above assumption isn't met!
    * ```report```
      * This method should return a string about the paperboy's performance
      * e.g. "I'm Tommy, I've delivered 90 papers and I've earned $38.25 so far!"

Here's some sample code, using your ```Paperboy``` class:
```
tommy = Paperboy.new("Tommy")

tommy.quota # => 50
tommy.deliver(101, 160) # => 17.5
tommy.earnings #=> 17.5
tommy.report # => "I'm Tommy, I've delivered 60 papers and I've earned $17.5 so far!"

tommy.quota # => 80
tommy.deliver(1, 75) # => 16.75
tommy.earnings #=> 34.25
tommy.report # => "I'm Tommy, I've been delivered 135 papers and I've earned $34.25 so far!"
```

## Check Your Understanding
___
Before moving on to the last exercise, it's important to ensure that you can answer the following questions:

  * What is the difference between a class and an instance of a class?
  *Class is just a template of an object while instance is a copy of that class with it's own values*
  * What is an instance variable?
  *An instance variable is a locally stored variable only available on the class unless explicityly called/set by getters and setters*
  * What is an instance method?
  *An instance method is similar to a normal method except it resides in an instance*
  * How is an instance variable different from a local variable?
  *Instance variables are available to be called/set within the instance but a local variable is only available within that specific score(ex. in a loop or method)*
  * What is the purpose of getter methods and setter methods?
  *getter and setter methods allow the instance variables to be set or retrieved. This makes it "available" outside the instance when invoked*
