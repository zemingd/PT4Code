n = gets.strip
n_int = n.to_i
s = 0
n.chars { |c| s += c.to_i }

if n_int % s == 0
  puts 'Yes'
else
  puts 'No'
end
