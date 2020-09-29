class PigLatinizer

    def piglatinize(words)
       words.split(" ").map do | word |
        word.start_with?(/[aeiou]/i) ? vowel(word) : consonant(word)
       end.join(" ")
    end

    def vowel(word)
        pig_word = word + "way"
    end

    def consonant(word)
        new_word = word
        until new_word.start_with?(/[aeiou]/i)
            new_word = new_word.chars.rotate.join
        end
        pig_word = new_word + "ay"
    end
end