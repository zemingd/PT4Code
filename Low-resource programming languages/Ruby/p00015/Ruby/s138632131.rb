n = gets.to_i
1.upto(n) do |i|
  sum = gets.to_i + gets.to_i
  puts sum.to_s.size > 80 ? 'overflow' : sum
end
# ruby <3