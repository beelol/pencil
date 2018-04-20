module Durable
    attr_reader :durability

    def set_durability(durability)
        @durability = durability
    end

    def add_durability(amount)
        @durability += amount
    end

    def remove_durability(amount)
        @durability -= amount
    end
end
