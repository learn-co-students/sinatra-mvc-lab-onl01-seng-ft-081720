class PigLatinizer 
 
  def latinize(word)
        word.start_with?(/[aeiou]/i) ? vowel(word) : consonant(word)
    end

    def piglatinize(words)
        words.split(' ').map{|word| latinize(word)} .join(" ")
    end

    def consonant(word)
        array = word.split('')
        if !word.start_with?(/[aeiou]/i)
            cons = array[0]
            array.shift
            array << cons 
            consonant(array.join(''))
        else
            word + 'ay'
        end
    end

    def vowel(word)
        word + 'way'
    end
end