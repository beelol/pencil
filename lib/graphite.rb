require "durable.rb"

class Graphite
    include Durable

    def initialize(durability)
        set_durability(durability)
    end
end
