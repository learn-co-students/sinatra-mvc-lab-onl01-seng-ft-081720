class PigLatinizer 
    def piglatinize(sentence)
        sentence.split(' ').map{ | word | piglatinize_word(word) }.join(' ')
    end

    def piglatinize_word(word)
        if vowel?(word[0])
          word += "way"
        else
          first_vowel_index = word.index(/[AEIOUaeiou]/)
          consonants = word.slice(0..first_vowel_index - 1)
          remaining_word = word.slice(first_vowel_index..word.length)
          remaining_word + consonants + "ay"
        end
    end

    def vowel?(letter)
        is_vowel = false
        if letter.match(/[AEIOUaeiou]/)
            is_vowel = true
        end
        is_vowel
    end

end