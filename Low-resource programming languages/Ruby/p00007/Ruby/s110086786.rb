sum = 100000
gets.chomp.to_i.times do |i|
  sum = sum * 1.05
  sum = sum -(sum % 1000) + 1000 until sum % 1000 == 0
end
puts sum.to_i