require 'pry'
class PigLatinizer 


    def piglatinize (words)
        words.split(" ").map { |word| piglatinize_word(word)}.join(" ")
    end

    def piglatinize_word (word)
        array = word.chars
        if word.start_with?(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)
        first = array.shift
        new_word = (array << first).join
        if new_word.start_with?(/[bcdfghjklmnpqrstvwxyz]/)
                new_array = new_word.chars
                second = new_array.shift
                new_word = (new_array << second).join
                if new_word.start_with?(/[bcdfghjklmnpqrstvwxyz]/)
                    new_array = new_word.chars
                    third = new_array.shift
                    pig_array = new_array << third + "ay"
                    pig_word = pig_array.join
                else
                    pig_array = new_array << "ay"
                    pig_word = pig_array.join
                end
        else
                pig_array = array << "ay"
                pig_word = pig_array.join
        end
        else
        pig_array = array << "way"
        pig_word = pig_array.join
        end
    end

end



# def piglatinize (word)
#     array = word.chars
#     i = 1
#     suffix = []

#     if word.start_with?(/[bcdfghjklmnpqrstvwxyz]/)
#         while array.first.to_s.scan(/[bcdfghjklmnpqrstvwxyz]/)
#             first = array.shift
#             suffix << first
#             i += 1
#             array
#         end
#         pig_array = array << suffix + "ay"
#         pig_word = pig_array.join
#     end
# end
