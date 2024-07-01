P = gets.chomp.split(' ').map(&:to_i)
N = gets.chomp.split(' ').map(&:to_i)
count = 0

for num1 in 0..N.size - 1 do
  count += N[num1]
end

if count >= P[0]
  puts 'Yes'
else
  puts 'No'
end