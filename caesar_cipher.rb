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
  cipher_string = ""
  # str to int
  string.each_char do |char| 
    
    # Checks for upcase letters
    if char.ord >= 65 && char.ord <= 90
      result = char.ord - 65
      result + int 
    # Checks for downcase letters
    elsif char.ord >= 97 && char.ord <= 122
      result = char.ord - 97
      result + int
    else    
      result = char
  end
  # Concatenate letters to return the ciphered string
  cipher_string += result
end  

