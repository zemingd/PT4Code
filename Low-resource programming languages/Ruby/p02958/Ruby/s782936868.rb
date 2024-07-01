n = gets.chomp.to_i
p_array = gets.chomp.split(' ').map(&:to_i)
a_array = (1..n).to_a

cnt = 0
0.upto(n - 1) do |i|
  cnt += 1 if p_array[i] != a_array[i]
end

if cnt <= 2
  puts 'YES'
else
  puts 'NO'
end
