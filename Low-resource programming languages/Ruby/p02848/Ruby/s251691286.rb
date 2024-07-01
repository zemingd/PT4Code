a = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
n = gets.to_i
s = gets.chomp.chars
ans = s.map do |char|
  index = a.index(char) + n
  char = a[index % 27]
end
puts ans.join
