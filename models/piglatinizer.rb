class PigLatinizer

    def piglatinize(text)
        arr = []
        words = text.split(' ')
        words.each do |word|
            if word.start_with?('a','e','i','o','u','A','E','I','O','U')
                word << 'way'
                arr << word
            else 
                consonant = word.split(/([aeiou].*)/)
                consonant[1] << "#{consonant[0]}ay"
                arr << consonant[1]
            end
        end
        arr.join(" ")
    end

end