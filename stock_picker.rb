# Takes an array of stock prices for each hypothetical day
# and return a pair of days representing the best day to buy 
# and sell, day starts at 0. Need to buy before selling. 
# Beware of edge cases like when the lowest day is the last day
# or highest day is the first day

# stock_picker([17,3,6,9,15,8,6,1,10])

def stock_picker(array)

  # Store price to buy, tracks the first price in the index
  min_price = array[0]

  # Stores the day of the price
  min_day = 0

  # Store best profit
  best_profit = 0

  # Store best buy and sell days
  buy_sell_day = [0, 0]

  # Iterate through price in array 
  array.each_with_index do |price, day|
  
    # Find best profit  
    profit = price - min_price

    # To check for best profit seen
    if profit > best_profit
      best_profit = profit
      buy_sell_day =[min_day, day] # min_day = buy day, day = sell day
    end

    # Set new min_price if found
    if price < min_price
      min_price = price
      min_day =  day
    end
  end
  puts "Best buy and sell day #{buy_sell_day}"
  puts "Profit earned #{best_profit}"
end
   

puts "Enter the stock pricing"

# If want to manually enter price of stock per day
# stock_price = gets.chomp
# stock_array = stock_price.split.map(&:to_i)
# stock_picker(stock_array)


# Straight enter an array into the function
stock_picker([17,3,6,9,15,8,1,10])
