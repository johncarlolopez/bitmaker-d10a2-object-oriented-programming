require "./Player.rb"

john = Player.new

puts john.about
#6,7 test
11.times {john.collect_treasure}
puts john.about

#8,9 test
john.do_battle(10)
puts john.about
john.do_battle(9)
puts john.about
6.times {john.do_battle(10)}
puts john.about
