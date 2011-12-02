class Rect
	#r:fornire istr al painter

	def what
	 Painter.draw do |p|
          p.right 10; p.down 5; p.left 10; p.up 5
         end 
	end
end

class Spiral
	#r:fornire istr al painter

	def initialize	
		@step=50.0
	end
	def nextStep
		@step *= 7 / 8.0
	end

	def what
	 Painter.draw do |p|		
		while(@step > 0.2) do
			p.right nextStep
			p.down nextStep
			p.left nextStep
			p.up nextStep
		end
	  end
	end
end

class Painter
	#r:applicare istruzioni nel posto indicato
	def self.draw
		yield self
	end

	def self.right(amount)
		puts "Right: #{amount}"
	end
	def self.left(amount)
		puts "Left: #{amount}"
	end
	def self.up(amount)
		puts "Up: #{amount}"
	end
	def self.down(amount)
		puts "Down: #{amount}"
	end
end

#Painter.draw(r=Rect.new)
#Painter.draw(Spiral.new)
r=Rect.new
r.what
puts '--'
s=Spiral.new
s.what
