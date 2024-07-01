a,b = gets.split.map(&:to_i)
s = [a,b].join('').to_i
d = Math.sqrt(s)
if d.to_s.split('.')[1] == "0"
  puts :Yes
else
  puts :No
end