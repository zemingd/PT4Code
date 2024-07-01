s = gets.to_s
t = gets.to_s

s_len = s.size

t_kako = t.slice(0,s_len-1)

if s.chomp == t_kako
  puts "Yes"
else
  puts "No"
end