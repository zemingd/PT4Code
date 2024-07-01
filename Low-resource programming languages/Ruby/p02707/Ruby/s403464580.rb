n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

sum = a.tally

1.upto(n) do |i|
  puts sum[i] || 0
end
