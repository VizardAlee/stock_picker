stock_prices = [17,3,6,9,15,8,6,1,10] #the given stock prices

def stock_picker(stocks)
  highest_profit = 0 #setting the highest profit variable
  best_days = 0 #setting the best days variable
  stocks.each_with_index do |stock1, day1| #first stock and first day
    stocks.each_with_index do |stock2, day2| #second stock and second day
       profit = stock2 - stock1 #get the profit by substracting the first stock from the second
       if profit > highest_profit && day1 < day2 #establihing the condition if the profit is highest and day1 is higher that day2
        highest_profit = profit #assign profit to highest profit
        best_days = [day1, day2] #assigning the days to the best days variable 
       end
    end
  end
  highest_profit
  best_days #returns this
end
p stock_picker([17,3,6,9,15,8,6,1,10])