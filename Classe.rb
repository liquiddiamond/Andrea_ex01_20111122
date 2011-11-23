# Andrea_20111122_ex01


###################
#   Mammal class
###################

# Mammal is a class
# Every mammal can walk and eat
class Mammal
	def self.walk
		puts("started to walk")
		yield
		puts("ended the walk")
	end
	
	def eat
		puts(" started to eat!")
		yield
		puts(" ended to eat")
	end
end


###################
#   Bunny class
###################

# Bunny is a Mammal subclass
# Every bunny is a mammal, also can jump
class Bunny < Mammal
	def self.jump
		puts(" started to jump")
		yield
		puts(" ended to jump")
	end
end


###################
#   create instances
###################

# We create three types of objects, a mammal and two bunnies
animal		= Mammal.new
normalBunny	= Bunny.new
bugsBunny	= Bunny.new


###################
#   create instance method
###################

# Bugs Bunny can also talk, because it's special
# His sentences are made by shuffled words of given dictionaries (array)
def bugsBunny.talk
	puts("started to talk!")
	yield
	puts("ended to talk")
end


###################
#   animal
###################

# Array of distances walked by animal
distances = [1, 4, 6, 8, 3, 11]
# Array of things which animal can eat
food = ["salad", "tomato", "cheese"]

puts "animal:\n------------"
animal.walk(distances.inject(0){|tdist,pdist| tdist + pdist})
animal.eat(food.select {|i| i == "cheese"})


###################
#   normalBunny
###################

# Array of distances walked by normalBunny
distances = [4, 7, 5, 42]
# Array of things which normalBunny can eat
food = ["mushroom", "bread", "honey", "potato", "grass"]
# Array of things which normalBunny can jump
obstacles = ["brick", "bush"]

puts "\n\nnormalBunny:\n------------"
normalBunny.walk(distances.inject(0){|tdist,pdist| tdist + pdist})
normalBunny.eat(food.select {|i| i == "mushroom"})
normalBunny.jump(obstacles)


###################
#   bugsBunny
###################

# Array of distances walked by bugsBunny
distances = [23, 67, 45, 89]
# Array of things which bugsBunny can eat
food = ["carrot", "cucumber", "champagne", "caviar"]
# Array of things which bugsBunny can jump
obstacles = ["wall", ""]
# Array of letters which bugsBunny can say
phrase = ["Hey", ",", "wassup", "dude", "?"]

puts "\n\nbugsBunny:\n------------"
bugsBunny.walk(distances.inject(0){|tdist,pdist| tdist + pdist})
bugsBunny.eat(food.select {|i| i == "cheese"})
bugsBunny.jump(obstacles)
bugsBunny.say(phrase.sort_by { rand })