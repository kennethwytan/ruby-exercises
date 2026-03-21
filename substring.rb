# Method that takes word as first arg 
# then an array of valid substrings as 
# second arg and returns a hash listing 
# each substring (case insensitive) that 
# was found in the original string and 
# how many times it was found

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]



def substring(word, dictionary)
  
  # Create empty Hash
  valid_substring = Hash.new
  
  # Loop each word in dictionary
  dictionary.each do |dict_word|

    # Check if input word included in dictionary
    if word.include?(dict_word)

      # Scan for similar word occurance, return MatchData and count number of times
      counter = word.scan(dict_word).count
    end

    # Store counter in Hash with corresponding word
    valid_substring[dict_word] = counter
  end
  puts valid_substring 
end



puts "Enter a word"

word = gets.chomp.downcase

substring(word, dictionary)
	
