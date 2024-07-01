a,b,c,d = gets.split.map(&:to_i)
if (a-c).abs <= d || ((b - c).abs <= d && (a-b).abs <= d)
  puts :Yes
else
  puts :No
end