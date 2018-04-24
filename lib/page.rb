
class Page
    attr_reader :text

    def initialize
        @text = ''
    end

    def append(text)
        @text += text;
    end
end
