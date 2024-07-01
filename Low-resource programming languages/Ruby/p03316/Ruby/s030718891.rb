n = gets

n_to_i = n.to_i
n_to_s = n.chomp.split('')
s = 0

n_to_s.each do |i|
  s += i.to_i
end

if (n_to_i % s) == 0
  puts 'Yes'
else
  puts 'No'
end
