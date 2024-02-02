def stock_picker(days_arr)
    buy_sell = [0, 0]
    days_arr.each do |price|
        for i in 0...days_arr.size do
            if days_arr.index(days_arr[i]) > days_arr.index(price) && (days_arr[i] - price) > (buy_sell[1] - buy_sell[0])
                buy_sell[0] = price
                buy_sell[1] = days_arr[i]
            end
        end
    end
    [days_arr.index(buy_sell[0]), days_arr.index(buy_sell[1])]
end

p stock_picker([17,3,6,9,15,8,6,1,10])