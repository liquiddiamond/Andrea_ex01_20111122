# Andrea_20111122_ex01

###########################
#   Classes and methods   #
###########################

# Superclass of Quadruped
class Animal
	@bananas = 0
	@breaths = 0
	@likeBananas = true
	@meters  = 0
	@speed   = 0

	# breathe is an instance method
	def breathe()
		@breaths = @meters * 2
		@breaths.times do puts "anf "
		puts "Breathed #{@breaths} times"
		puts "Total calories burnt: #{burntcals(@meters)}"
	end

	# burntcals is a class method	
	def self.burntcals(dist)
		kcals = dist * 105
		return kcals
	end

	# likeBananas? is an instance method
	def likeBananas?
		return @likeBananas ? "eek eek!" : "uh uh!"
	end

	# eatBananas is an instance method
	def eatBananas(m)
		if (self.likeBananas? != "uh uh!")
			@bananas = self.burntcals(m)
		return @bananas
	end
end

# subclass of Animal
class Quadruped < Animal
	# class constructor
	def initiate(n, k, m, s, lb)
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
	def self.getTimeLapse
		return (@speed != 0) ? @speed/@meters : 0
	end
	
	#run is an instance method
	def run()
		puts "Ran for #{@meters} meters in #{self.getTimeLapse} seconds"
		# chiama funzione per stampare quante volte ha respirato
		self.breathe
	end
end


###################
#   instances
###################

# We create three types of objects, a mammal and two bunnies
cheetah	= Quadruped.new("cheetah", "chimp", 23, 1.2, true)
dumbo	= Qaudruped.new("dumbo", "elephant", 5, 0.3, false)

cheetah.run()