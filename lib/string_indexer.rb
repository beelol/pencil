module StringIndexer
    def last_occurrence(text, token)
        text.rindex(token)
    end

    def rightmost_index_of_last_occurrence(text, token)
        last_occurrence(text, token) + token.length - 1
    end
end
