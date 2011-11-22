# Andrea_20111122_ex01

# Every mammal can walk and eat
class Mammal
	def walk
		puts "Stomp stomp"
	end
	
	def eat
		puts "Crunch crunch"
	end
end

# Every bunny is a mammal, also can jump and bite carrots
class Bunny < mammal
	def jump
		puts "Hoop hoop!"
	end

	def bite
		puts "Crunch crunch!"
	end
end

# We create three types of objects, a mammal and two bunnies
animal		= Mammal.new
normalBunny	= Bunny.new
bugsBunny	= Bunny.new

# Bugs Bunny can also talk, beause it's special
bugsBunny.talk()