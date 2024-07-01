loop do
  sum = 0
  x = gets.chomp.split("").map(&:to_i)
  break if x.last == 0 && x.first == 0
  x.each do |num|
    sum += num
  end
  puts sum
end
