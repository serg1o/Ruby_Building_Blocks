def stock_picker(stock = [17,3,6,9,15,8,6,1,30,0])
  buy = 0
  sell = 0
  i_buy_final = 0
  i_sell_final = 0
  stock.to_enum.with_index(0).each do |x, i|
    i_buy = i
    i_sell = stock[i..-1].each_with_index.max[1] + i
    if ((stock[i_sell] - stock[i_buy]) > (sell - buy) && (i < stock.size))
      i_buy_final = i_buy
      i_sell_final = i_sell
      buy = stock[i_buy]
      sell = stock[i_sell]
    end
  end
  puts "Buy on day " << i_buy_final.to_s << " and sell on day " << i_sell_final.to_s << " for a profit of " << (sell - buy).to_s
end

stock_picker
