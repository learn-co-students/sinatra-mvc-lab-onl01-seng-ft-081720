class Piglatinizer
    attr_accessor :text

    def initialize(text)
        @text = text.downcase
    end

    def piglatinize
        self.text.scan(/[\w'-]+|[[:punct:]]+/).map do | word |
            if  word.start_with?("a", "e", "i", "o", "u")
                word + "way"
            elsif word.start_with?(/[a-z]/)
                word.chars.rotate.join + "ay"
            else
            end
        end.join(" ")
    end
end