n = gets.chomp.to_i
s = gets.chomp.to_s

t_1 = ''
t_2 = ''
for i in 0..n - 1 do
  if i < (n / 2)
    t_1 += s[i]
  else
    t_2 += s[i]
  end
end

if t_1 == t_2
  puts 'Yes'
else
  puts 'No'
end