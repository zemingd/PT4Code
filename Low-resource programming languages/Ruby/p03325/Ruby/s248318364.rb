n = gets.chomp.to_i
ary = gets.chomp.split.map(&:to_i)

ans = ary.reduce(0) do |sum, i|
  sum + i.to_s(2).reverse.index("1")
end

puts ans