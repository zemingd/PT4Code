s=gets.chomp
n = s.chars.select{|c|c=='o'}.count

p 700 + 100 * n