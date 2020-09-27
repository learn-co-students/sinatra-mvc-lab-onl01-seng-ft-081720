class PigLatinizer
  
  def piglatinize(latin)
    pig(latin)
  end
  
  def to_pig_latin(string)
    pig(string)
  end
  
  def pig(latin)
    a = ('a'..'z').to_a + ('A'..'Z').to_a
    v = %w[a e i o u] + %w[A E I O U]
    c = a - v
  
    results = []
      input = latin.split(' ') 
        input.each do |word|
            if word.length < 2
               results << word + "way" 
            elsif v.include?(word[0])
               results <<  word + "way"
            elsif c.include?(word[0]) && c.include?(word[1]) && c.include?(word[2])
               results <<  word[3..-1] + word[0..2] + 'ay'
            elsif c.include?(word[0]) && c.include?(word[1])
               results <<  word[2..-1] + word[0..1] + 'ay'
            elsif c.include?(word[0])
               results <<  word[1..-1] + word[0] + 'ay'
            else 
               results <<  word + '?'
            end
        end 
    results.join(', ').gsub(/,/, '')
  end

end