num = gets.chomp.split(' ').map(&:to_i)
sticks = gets.chomp.split(' ').map(&:to_i).sort {|a, b| b <=> a }
sum = 0
num[1].times do |i|
  sum += sticks[i]
end
puts sum
