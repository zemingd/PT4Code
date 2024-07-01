n = gets.to_i
s = gets.chomp
if n % 2 == 0
  l = n / 2
  ans = s.split(/\A(.{1,#{l}})/, 2)[1..-1]
end
if s.length == 1
  puts "No"
else
  if ans[0] == ans[1]
    puts "Yes"
  else
    puts "No"
  end
end