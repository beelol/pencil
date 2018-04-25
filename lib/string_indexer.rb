module StringIndexer
    def last_occurrence(text, token)
        text.rindex(token)
    end

    def rightmost_index_of_last_occurrence(text, token, moves = nil)
        right_offset = moves.nil? ? token.length - 1 : moves

         last_occurrence(text, token) + right_offset
    end

    def leftmost_reachable_index_from_right(text, token, moves)
        right = rightmost_index_of_last_occurrence(text, token)

        right - moves
    end
end
