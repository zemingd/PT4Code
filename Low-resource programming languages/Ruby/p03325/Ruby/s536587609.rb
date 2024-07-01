n = gets.to_i
a = gets.split.map(&:to_i)
a.map!{|e| e.to_s(2).reverse.index("1")}
puts a.inject(:+)