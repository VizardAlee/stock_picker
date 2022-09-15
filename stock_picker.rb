# frozen_string_literal: false

# buy stock at the lowest price and then sell at the highest

# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day.
# It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

stock = [17, 3, 6, 9, 15, 8, 6, 1, 10]

# stock picker method
def stock_picker(stock)
  highest_profit = 0
  best_days = 0

  stock.each_with_index do |price1, day1|
    stock.each_with_index do |price2, day2|
      profit = price2 - price1
      if profit > highest_profit && day2 > day1
        highest_profit = profit
        best_days = [day1, day2]
      end
    end
  end
  human = best_days.map { |day| day + 1 } # Instead of using index, want to make it human readable
  "The highest profit is $#{highest_profit}, and the best days are day #{human.first} (to buy) and day #{human.last} (to sell)"
end

puts stock_picker(stock)
