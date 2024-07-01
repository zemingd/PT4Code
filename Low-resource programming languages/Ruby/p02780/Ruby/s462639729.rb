n, k = gets.split.map(&:to_i)
pp = gets.split.map{|e| (e.to_f + 1) / 2}

max = 0
pp.each_cons(k) do |arr|
    x = arr.inject(:+)
    max = x if max < x
end

puts max