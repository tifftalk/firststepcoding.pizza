class Pizza

    def initialize(name, slices)
        @name = name
        @slices = slices
        @is_ready = false
    end

    def bake
        @is_ready = true
    end

    def talk
        # Describe the name of the pizza and slices
        puts("I am a #{@name} pizza and I have #{@slices} slices")

        # Announce if it's ready or not.
        if @is_ready == true
            puts "The pizza is ready to eat!"
        else
            puts "You might want to bake this thing first."
        end
    end

    def eat_slice()
        if @slices == 0
            puts "There's no more pizza!"
        else
            @slices = @slices - 1
            talk
        end
    end

    def combine_slices(otherPizza)
        combined_slices = @slices + otherPizza.slices
        puts "When our pizzas combine, we have #{combined_slices} slices!"
    end

    def set_name(the_new_name)
        @name = the_new_name
    end
end
