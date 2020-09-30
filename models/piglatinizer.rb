class PigLatinizer

    def piglatinize(text)
        piglatin = []
        vowels = ['a', 'e', 'i', 'o', 'u']
        text.split.each do |word|
            letters = word.split("")
            if vowels.include?(word[0].downcase)
                letters << ["w", "a", "y"]
                piglatin << letters.join
            else
               word_array = word.split /([aeiou].*)/
                consonants = word_array[0]
                root = word_array[1]
                pig = "ay"
                new_word = [root, consonants, pig].join
                piglatin << new_word
            end
        end
        piglatin.join(" ")
    end

end