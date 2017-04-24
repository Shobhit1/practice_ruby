class StockPicker  
  def stock_picker(stocks)
    # stocks_sorted = stocks.sort
    min = stocks.min
    max = stocks.max

    max_index = stocks.find_index(max)
    min_index = stocks.find_index(min)

    if max_index == 0 || min_index == (stocks.length - 1)
      return nil
    elsif min_index < max_index
      return [min_index, max_index]
    end

    stocks.each do |stock_price|
      
    end
  end
end