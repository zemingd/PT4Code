n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)
i = 0
while i < n
  puts arr.count(i + 1)
  i += 1
end
