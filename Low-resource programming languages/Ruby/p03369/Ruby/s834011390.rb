box = gets.chomp.chars.map(&:to_s)
Price = 0

box.each_with_index(1) do |a,i|
  if i == 1
  next
  end

 if a == "o"
 price = Price+100
end

puts Price