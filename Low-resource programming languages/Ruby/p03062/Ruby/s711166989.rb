n = gets.to_i
a = gets.split().map {|v| v.to_i}

neg = a.count {|v| v < 0}

arr_abs = a.map {|v| v.abs}

if neg % 2 == 0
  puts arr_abs.inject(:+)
else
  puts arr_abs.inject(:+) - arr_abs.min * 2
end
