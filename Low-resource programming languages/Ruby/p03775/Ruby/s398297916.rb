N=gets.chomp.to_i
a=0
(N-1).times do |i|
  b=N/(i+1)
  break if i+1 > b

  N % (i+1) == 0 ? a=i+1 : next
end
puts a.to_s.size