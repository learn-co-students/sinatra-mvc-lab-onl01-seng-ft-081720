class PigLatinizer


    def piglatinize(thing)
      pig(thing)
    end
    
    def to_pig_latin(string)
      pig(string)
    end
    
    def pig(thing)
      alpha = ('a'..'z').to_a + ('A'..'Z').to_a
      vowels = %w[a e i o u] + %w[A E I O U]
      consonants = alpha - vowels
    
      pig_result = []
        input = thing.split(' ') 
          input.each do |word|
              if word.length < 2
                 pig_result << word + "way" 
              elsif vowels.include?(word[0])
                 pig_result <<  word + "way"
              elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
                 pig_result <<  word[3..-1] + word[0..2] + 'ay'
              elsif consonants.include?(word[0]) && consonants.include?(word[1])
                 pig_result <<  word[2..-1] + word[0..1] + 'ay'
              elsif consonants.include?(word[0])
                 pig_result <<  word[1..-1] + word[0] + 'ay'
              else 
                 pig_result <<  word + '?'
              end
          end 
      pig_result.join(', ').gsub(/,/, '')
    end
    
    end 