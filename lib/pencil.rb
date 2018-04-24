require "eraser.rb"
require "graphite.rb"
require "pencil_length.rb"

class Pencil
    attr_reader :graphite, :eraser, :length

    def initialize(graphite_durability, eraser_durability, length)
        @graphite = Graphite.new(graphite_durability)
        @eraser = Eraser.new(eraser_durability)
        @length = PencilLength.new(length)

        @start_durability = graphite_durability
    end

    def write(text_on_page, text_to_write)
        text_on_page << text_to_write
    end

    def sharpen
        @graphite.set_durability @start_durability
        @length.remove_durability 1
    end
end
