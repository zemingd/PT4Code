n,k = gets.chomp.split.map(&:to_i)
cnt = 0
loop do
  break if k ** cnt > n
  cnt += 1
end
puts cnt