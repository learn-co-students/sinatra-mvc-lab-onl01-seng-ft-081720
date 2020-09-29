class PigLatinizer

    def vowel(word)
        "#{word}way"
    end

    def consonant(word)
        arr=word.split("")
        if !word.start_with?(/[aeiou]/i)
            first_letter=arr.shift
            arr << first_letter
            consonant(arr.join)
        else
            word+"ay"
        end
    end

    def PigLati_word(word)
        word.start_with?(/[aeiou]/i) ? vowel(word) : consonant(word)
    end

    def piglatinize(sentence)
        sentence.split(" ").map {|word| PigLati_word(word)}.join(" ")
    end
end