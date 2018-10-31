def remove_dups(array)
  arr = []
  
  array.each do |el|
    arr << el unless arr.include?(el)
  end
  arr
end

def two_sum(array)
  indices = []
  array.each_index do |i|
    (i+1...array.length).each do |j|
      indices << [i, j] if array[i] + array[j] == 0
    end
  end
  indices
end

def my_transpose(arr)
  result = Array.new(arr.length) {[]}
  arr.each_with_index do |sub, i|
    sub.each_index do |j|
      result[i][j] = arr[j][i]
    end
  end
  result
end

def profitable_days(arr)
  best_profit = 0
  best_buy = 0
  best_sell = 0
  
  arr.length.times do |buy|
    (buy + 1...arr.length).each do |sell|
    profit = arr[sell] - arr[buy]
      if profit > best_profit 
        best_profit = profit
        best_buy, best_sell = buy, sell
      end
    end
  end
  [best_buy, best_sell]
end