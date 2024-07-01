num = gets.split.map do |x|
  x.to_f
end

puts ((num[0]+num[1])/2).ceil
