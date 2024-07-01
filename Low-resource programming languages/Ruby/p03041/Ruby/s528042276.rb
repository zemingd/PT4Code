n, k = gets.split.map(&:to_i)
s = gets.chomp.split("")
s[k-1].downcase!
p s.join