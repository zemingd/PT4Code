n = gets.to_i
s = gets.chomp
a = [*'A'..'Z']
s.each_char do |c|
  t = a.index(c)
  print a[(t+n)%26]
end