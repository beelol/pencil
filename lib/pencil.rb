require "eraser.rb"
require "graphite.rb"
require "pencil_length.rb"

class Pencil
    def write(text_on_page, text_to_write)
        text_on_page << text_to_write
    end
end
