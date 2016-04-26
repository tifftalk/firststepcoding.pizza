class Pizza
	attr_accessor :slices

	def initialize(name, slices)
		@name = name
		@slices = slices
		@cooked = false
	end

	def talk()
		puts("Hello, I am a #{@name} pizza with #{@slices} slices")
	end

	def cook()
		@cooked = true
	end

	def eat_slice()
		if @slices == 0
			puts "There's no more pizza left! Order another."
		else
			@slices = @slices - 1
		end

		if @slices == 1
			puts "There's only one left!"
		end

		talk()
		if @cooked == false
			puts "YOU JUST ATE A FROZEN PIZZA SLICE!!!!"
		end
	end

	def combine_with( other_pizza )
		@slices = @slices + other_pizza.slices
		other_pizza.slices = 0
	end
end
