require "durable.rb"
require "string_indexer.rb"

class Eraser
    include Durable
    include StringIndexer

    def initialize(durability)
        set_durability(durability)
    end

    def erase(page, token, replacer = ' ')
        moves = [@durability, token.length].max

        right = rightmost_index_of_last_occurrence(page, token)

        left = leftmost_reachable_index_from_right(page, token, moves)

        page[left..right] = replacer * moves
    end
end
