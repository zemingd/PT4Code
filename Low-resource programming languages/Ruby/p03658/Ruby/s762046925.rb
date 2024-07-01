sticks = gets.chomp.split(' ').map(&:to_i).sort {|a, b| b <=> a }
sum = 0
gets.to_i.times do |i|
  sum += sticks[i]
end
puts sum
