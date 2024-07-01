N=gets.chomp.to_i
b=N
(N-1).times do |i|
  a=i+1
  break if a > N/(i+1)

  N % a == 0 ? b=N/a : next
end
puts b.to_s.size