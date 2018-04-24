require "durable.rb"
require "string_indexer.rb"

class Eraser
    include Durable
    include StringIndexer

    def initialize(durability)
        set_durability(durability)
    end

    def erase(page, token, replacer = ' ')
        moves = [@durability-1, token.length-1].min

        right = rightmost_index_of_last_occurrence(page, token)
        left = leftmost_reachable_index_from_right(page, token, moves)

        remove_durability token.length

        page[left..right] = replacer * moves
    end
end
