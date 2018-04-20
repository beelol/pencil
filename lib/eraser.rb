require "durable.rb"

class Eraser
    include Durable

    def initialize(durability)
        set_durability(durability)
    end
end
