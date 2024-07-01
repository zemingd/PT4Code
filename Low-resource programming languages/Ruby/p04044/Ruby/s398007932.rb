n,l = gets.chomp.split(' ').map(&:to_i)
i = 0
arr = []
while i < n
  s = gets.chomp
  arr << s
  i += 1
end
puts arr.sort.join