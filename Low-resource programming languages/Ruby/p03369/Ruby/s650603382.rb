box = gets.chomp.chars.map(&:to_s)
Price = 0

box.each_with_index(1) do |a,i|
  if i == 1
   Price = 700 if a == "o"
  end
  if a == "o"
   Price = Price+100
  end
end
puts Price