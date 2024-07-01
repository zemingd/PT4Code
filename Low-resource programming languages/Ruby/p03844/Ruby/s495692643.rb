q = gets.chomp.to_i
times = gets.chomp.split(" ").map(&:to_i)
#times
#=> [2, 1, 4]
sum = times.inject{|sum, n| sum + n }
drink_num = gets.chomp.to_i

drink_num.times do |i|
  q_num, change_time = gets.chomp.split(" ").map(&:to_i)
  puts sum + change_time - times[q_num-1]
end


