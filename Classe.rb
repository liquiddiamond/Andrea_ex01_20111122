# Andrea_20111122_ex01

# Every mammal can walk and eat
class Mammal
	def self.walk
		puts(self "started to walk")
		puts (walks for yeld() kilometers)
		puts(self "ended the walk")
	end
	
	def eat
		puts(self "eat start!")
		yeld()
		puts("eat end")
	end
end

# Every bunny is a mammal, also can jump and bite carrots
class Bunny < Mammal
	def self.jump
		puts("jump start!")
		yeld()
		puts("jump end")
	end

	def bite
		puts("bite start!")
		yeld()
		puts("bite end")
	end
end

# We create three types of objects, a mammal and two bunnies
animal		= Mammal.new
normalBunny	= Bunny.new
bugsBunny	= Bunny.new


# Bugs Bunny can also talk, because it's special
def bugsBunny.talk
	puts("eat start!")
	yeld()
	puts("eat end")
end


# This is an array of distances walked by animal
distances[1, 4, 6, 8, 3, 11]

# This is an array of things which 

# Now let's see what did
puts "animal:\n------------"
animal.walk(distances.inject(0){|tdist,pdist| tdist + pdist})
animal.eat()

# This is an array of distances walked by normalBunny
distances[4, 7, 5, 42]

puts "\n\nnormalBunny:\n------------"
normalBunny.walk(distances.inject(0){|tdist,pdist| tdist + pdist})
normalBunny.eat()
normalBunny.jump()
normalBunny.bite()

# This is an array of distances walked by bugsBunny
distances[23, 67, 45, 89]

puts "\n\nbugsBunny:\n------------"
bugsBunny.walk(distances.inject(0){|tdist,pdist| tdist + pdist})
bugsBunny.eat()
bugsBunny.jump()
bugsBunny.bite()