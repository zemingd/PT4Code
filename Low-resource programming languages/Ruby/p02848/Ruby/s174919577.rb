let = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split('')
n = gets.to_i
s = gets.chomp
result = ""
s.chars{|l|
  num = let.find_index(l)
  num = (num + n) % 26
  result << let[num]
}
puts result