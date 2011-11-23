# Andrea_20111122_ex01

# Every mammal can walk and eat
class Mammal
	def walk()
		puts "Stomp Stomp!"
	end
	
	def eat()
		puts "Yum Yum!"
	end
end

# Every bunny is a mammal, also can jump and bite carrots
class Bunny < Mammal
	def jump()
		puts "Hop Hop!"
	end

	def bite()
		puts "Crunch Crunch!"
	end
end

# We create three types of objects, a mammal and two bunnies
animal		= Mammal.new
normalBunny	= Bunny.new
bugsBunny	= Bunny.new

# Bugs Bunny can also talk, because it's special
def bugsBunny.talk()
	puts("Hey dude wassup?")
end

# Now let's see what they can do
puts "animal"
animal.walk()
animal.eat()

puts "\n\nnormalBunny"
normalBunny.walk()
normalBunny.eat()
normalBunny.jump()
normalBunny.bite()

puts "\n\nbugsBunny:"
bugBunny.walk()
bugBunny.eat()
bugBunny.jump()
bugBunny.bite()