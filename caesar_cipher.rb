# Caesar cipher, type of substitution where each letter is 
# replaced by a letter e.g with left shift of 3, D becomes 
# A, E becomes B and so on

def caesar_cipher(string, int)
  cipher_string = ""
  # str to int
  string.each_char do |char| 
    
    # Checks for upcase letters
    if char.ord >= 65 && char.ord <= 90
      
      # Converts character to number using .ord and -65 to get number between 0-25 (max to 25 to match the number of letters in the alphabet)
      result = char.ord - 65
      
      # Wraps the number around past 25
      result = (result + int) % 26

      # Converts the number back to character
      result = (result + 65).chr

    # Checks for downcase letters
    elsif char.ord >= 97 && char.ord <= 122
      result = char.ord - 97
      result = (result + int) % 26
      result = (result + 65).chr
    else    
      result = char
    end
  # Concatenate letters to return the ciphered string
  cipher_string += result
  end  
  puts cipher_string
end

puts "Enter your sentence"

sentence = gets.chomp

puts "Enter the number of shift"

number = gets.chomp.to_i

caesar_cipher(sentence, number)


