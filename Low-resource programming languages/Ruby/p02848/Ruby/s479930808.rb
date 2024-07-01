a = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
n = gets.to_i
s = gets.chomp.chars
s = s.map do |char|
  index = a.index(char) + n
  char = a[index % 26]
end
puts s.join
