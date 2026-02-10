# Caesar cipher, type of substitution where each letter is 
# replaced by a letter e.g with left shift of 3, D becomes 
# A, E becomes B and so on


#def string_to_number(string)
#  string.to_i
#end


#def cap_first_word(word)
#  word.capitalize
#end


def caesar_cipher(string, int)
  # str to int
  string.each_char do |char| 
    if char.ord > 25
      (char.ord + int) % 26
    end
  char.ord + int 

end  
  
