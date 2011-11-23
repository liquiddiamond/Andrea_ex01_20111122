# Andrea_20111122_ex01


###################
#   Mammal class
###################

# Mammal is a class
# Every mammal can walk and eat
class Mammal
	def self.walk
		puts(self "started to walk")
		puts ("walks for " yeld " kilometers")
		puts(self "ended the walk")
	end
	
	def eat
		puts(self "eat start!")
		puts ("eats for " yeld " kilometers")
		puts("eat end")
	end
end


###################
#   Bunny class
###################

# Bunny is a Mammal subclass
# Every bunny is a mammal, also can jump and bite carrots
class Bunny < Mammal
	def self.jump
		puts("jump start!")
		yeld
		puts("jump end")
	end

	def bite
		puts("bite start!")
		yeld
		puts("bite end")
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
def bugsBunny.talk
	puts("eat start!")
	yeld()
	puts("eat end")
end


###################
#   animal
###################

# Array of distances walked by animal
distances[1, 4, 6, 8, 3, 11]
# Array of things which animal can eat
food["salad", "tomato", "cheese"]

puts "animal:\n------------"
animal.walk(distances.inject(0){|tdist,pdist| tdist + pdist})
animal.eat(puts)


###################
#   normalBunny
###################

# Array of distances walked by normalBunny
distances[4, 7, 5, 42]
# Array of things which normalBunny can eat
food["mushroom", "bread", "honey", "potato", "grass"]

puts "\n\nnormalBunny:\n------------"
normalBunny.walk(distances.inject(0){|tdist,pdist| tdist + pdist})
normalBunny.eat()
normalBunny.jump()
normalBunny.bite()


###################
#   bugsBunny
###################

# Array of distances walked by bugsBunny
distances[23, 67, 45, 89]
# Array of things which bugsBunny can eat
food["carrot", "cucumber", "champagne", "caviar"]

puts "\n\nbugsBunny:\n------------"
bugsBunny.walk(distances.inject(0){|tdist,pdist| tdist + pdist})
bugsBunny.eat()
bugsBunny.jump()
bugsBunny.bite()