# One element is compared to element + 1
# and is swapped if element + 1 is < than 
# element. Continues until array is sorted 
# in ascending order

def bubble_sort(array)

  # Get length of array
  length_of_arr = array.length
  
  # Clone array for comparison
  sort_arr = array.clone
  
  # Take length of array - 1 number of times
  (length_of_arr - 1).times do 
    
    # Get range - 2 to make sure its not out of index bounds, since its comparing 2 indices
    (0..length_of_arr - 2).each_with_index do |i|
  
      # If left index biger than right index swap
      if sort_arr[i] > sort_arr[i+1]
        temp_holder = sort_arr[i]
        sort_arr[i] = sort_arr[i+1]
        sort_arr[i+1] = temp_holder
      end      
    end
  end

  # Store in variable and p, so that it prints in an array rather than line-by-line
  sorted_arr = []
  sorted_arr << sort_arr

  # puts prints line by line, p prints in list, best for debugging too
  p sorted_arr
end



bubble_sort([6,5,3,1,8,7,2,4])
