n = gets.chomp.to_i
str = ""
(1..n).each do |i|
  if i % 3 == 0 || i % 10 == 3
    str << "#{i} "
  end
end
puts str.chop