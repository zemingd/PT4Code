n = gets.to_i
a = gets.split().map(&:to_i)
a.sort!{|b, c| c <=> b}
d = a.select{|c| a.count(c) > 1}.uniq
if d.length < 2
  puts 0
else
  puts d[0] * d[1]
end
