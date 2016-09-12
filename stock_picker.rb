def stock_picker(prices)
	low_price_day = 0
	high_price_day = 1
	profit = 0 

	prices.each_with_index do |buy_price, buy_day|
		prices.each_with_index do |sell_price, sell_day|
			if buy_day < sell_day
				if sell_price - buy_price > profit
					profit = sell_price - buy_price
					high_price_day = sell_day
					low_price_day = buy_day
				end
			end
		end
	end

	return [low_price_day, high_price_day, profit]
end

stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

puts stock_picker(stock_prices).inspect