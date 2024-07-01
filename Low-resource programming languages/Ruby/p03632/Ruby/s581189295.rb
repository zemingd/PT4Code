a,b,c,d = gets.split.map(&:to_i)
if a >= d || c >= b
  puts 0
else
  s = []
  s = [a,b,c,d].sort
  puts s[2] - s[1]
end
  