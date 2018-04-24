require "durable.rb"

class PencilLength
    include Durable

    def initialize(durability)
        set_durability(durability)
    end
end
