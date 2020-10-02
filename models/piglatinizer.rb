require 'pry'
class PigLatinizer
  
    def piglatinize(text)
      words = text.split(" ")
      arr = []
      words.each do |word|
        new_word = word.split(/([aeiouAEIOU].*)/).reject{|w| w.empty?}

        new_word[0][0].match?(/[aeiouAEIOU]/) ? arr << (new_word << "way").join : arr << (new_word.reverse << "ay").join
        
      end
      arr.join(" ")
    end
end
