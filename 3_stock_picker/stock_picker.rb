def stock_picker(daily_prices)
  days = daily_prices.length
  price_indexes = [daily_prices.max, daily_prices.min]
  price_diference = 0

  for i in 0..days-1
    for j in i+1..days
      new_difference = -(daily_prices[i].to_i - daily_prices[j].to_i)
      if new_difference > price_diference
        price_indexes[0] = i
        price_indexes[1] = j
        price_diference = new_difference
      end
    end
  end
  price_indexes
end

puts "please insert array of prices separated by a comma:"
prices = gets.chomp
prices = prices.split(", ")
days_to_buy = stock_picker(prices)
p days_to_buy
puts "for a profit of #{prices[days_to_buy[1]].to_i-prices[days_to_buy[0]].to_i}"



#test block
# prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
# days_to_buy = stock_picker(prices)
# p days_to_buy
# puts "for a profit of #{prices[days_to_buy[1]].to_i-prices[days_to_buy[0]].to_i}"

