box = gets.chomp.chars
Price = 700

box.each_with_index do |a|
  if a == "o"
   Price = Price+100
  end
end

puts Price