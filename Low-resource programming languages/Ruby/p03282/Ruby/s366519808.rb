s = gets.chomp
k = gets.to_i
if s.delete('1').length == 0 || s[0...k].delete('1').length == 0
  puts 1
else
  s.delete('1')[0]
end
