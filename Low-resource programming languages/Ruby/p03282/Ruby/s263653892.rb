s = gets.chomp
k = gets.to_i
s1 = s[/^1+/] || []
ss = s.split(/^1+/)
if s1[k-1]
  puts 1
else
  puts ss[-1][0]
end
