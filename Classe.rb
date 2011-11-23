# Andrea_20111122_ex01

###################
#   Classes
###################

class Animal
	@@bananas = 0
	@@breaths = 0
	@@kind = ""
	@@name = ""
	
	# Breathe is an instance method
	def breathe(meters)
		@@breaths = meters * 2
		@@breaths.times do {puts "anf "}
	end
	
	# likeBananas? is a class method
	def likeBananas?
		
	end
	
	# eatBananas is a class method
	def self.eatBananas()
		@@bananas = 
		return bananas
	end
end

class Quadruped < Mammal
	def self.run()
		# numero di kilometri
		# tempo impiegato
		# chiama funzione per stampare quante volte ha respirato
		# chiama funzione per indicare quante banane dovrà mangiare per recuperare le forze
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

# The sentences are made by shuffled words of given dictionaries (array)
def bugsBunny.talk
	puts("started to talk")
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
distances.walk(distances.inject(0){|tdist,pdist| tdist + pdist})
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
distances.walk {distances.inject(0){|tdist,pdist| tdist + pdist}}
normalBunny.eat(food.select {|i| i == "mushroom"})
Bunny.jump(obstacles)


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
Mammal.walk(distances.inject(0){|tdist,pdist| tdist + pdist})
bugsBunny.eat(food.select {|i| i == "cheese"})
Bunny.jump(obstacles)
bugsBunny.say(phrase.sort_by { rand })