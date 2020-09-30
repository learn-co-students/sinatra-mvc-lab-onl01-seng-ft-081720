class PigLatinizer
    attr_reader :text

    def initialize(text)
        @text = text
    end

    def piglatin
        @text.split.each do |word|
         word.split("")

        end
    end
end