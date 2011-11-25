# Andrea_20111125_ex01

###########################
#   Classes and methods
###########################

# Superclass of Quadruped
class Animal
	@bananas = 0
	@breaths = 0
	@likeBananas = true
	@meters  = 0
	@speed   = 0
	
	# getBananas is a class method
	def self.getBananas
		return @bananas
	end
	
	# getBananas is a class method
	def self.getBreaths
		return @breaths
	end
	
	# getBananas is a class method
	def self.getMeters
		return @meters
	end
	
	# getBananas is a class method
	def self.getSpeed
		return @speed
	end

	# breathe is an instance method
	def breathe
		@breaths = @meters * 2
		@breaths.times do puts "anf "
		end
		puts "Breathed #{@breaths} times"
		puts "Total calories burnt: #{burntcals(@meters)}"
	end
	
	# burntcals is an instance method	
	def burntcals(dist)
		kcals = dist * 105
		return kcals
	end
	
	# likeBananas? is an instance method
	def likeBananas?
		return @likeBananas ? "eek eek!" : "uh uh!"
	end
	
	def procPlaces
		
	end
	
	def lambdaPlaces
		
	end
	
	# eatBananas is an instance method
	def eatBananas(m)
		if (self.likeBananas? != "uh uh!")
			@bananas = self.burntcals(m)
		end
		return @bananas
	end
end

# subclass of Animal
class Quadruped < Animal
	# class constructor
	def initialize (n, k, m, s, lb)
		@name        = n
		@kind        = k
		@meters      = m
		@speed		 = s
		@likeBananas = lb
	end
	
	# getKind is a class method
	def self.getKind()
		return @kind
	end
	
	# getName is a class method
	def self.getName
		return @name
	end
	
	# getTimeLapse is a class method
	def getTimeLapse
		return (@speed != 0) ? @speed/@meters : 0
	end
	
	#run is an instance method
	def run()
		puts "#{@name} ran for #{@meters} meters in #{self.getTimeLapse} seconds"
		# chiama funzione per stampare quante volte ha respirato
		self.breathe
	end
end


###################
#   instances
###################

# We create three types of objects, a mammal and two bunnies
cheetah	= Quadruped.new("cheetah", "chimp", 23, 2, true);
dumbo	= Quadruped.new("dumbo", "elephant", 5, 1, false);

cheetah.run()
dumbo.run()


###################
#   proc and lambda
###################

pExample = Proc.new { |p1, p2, p3, p4, p5| [p1, p2, p3, p4, p5] }
lExample = lambda { |l1, l2, l3, l4, l5| [l1, l2, l3, l4, l5] }

puts pExample.call("Parigi", "Roma")
puts pExample.call
puts pExample.call("Parigi", "Roma", "New Yok", "Amsterdam", "Riga")
# puts pExample.call("Parigi", "Roma", "New Yok", "Amsterdam", "Riga", "Athens") => Error - too much parameters

# puts lExample.call("Parigi", "Roma") => Error - there aren't enough parameters
# puts lExample.call => Error - no parameters
puts lExample.call("Parigi", "Roma", "New Yok", "Amsterdam", "Riga")
# puts lExample.call("Parigi", "Roma", "New Yok", "Amsterdam", "Riga", "Athens") => Error - too much parameters



