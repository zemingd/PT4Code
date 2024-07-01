s = gets.chomp.split("")
sum = 0

s.each do |string|
  sum += 1 if string = "o"
end
puts 700 + sum * 100
