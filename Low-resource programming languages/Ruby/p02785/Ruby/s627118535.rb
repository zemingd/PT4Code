P = gets.chomp.split(' ').map(&:to_i)
N = gets.chomp.split(' ').map(&:to_i)


max = N.max
result = 0

if P[1] == 0
  for num1 in 0..N.size - 1 do
    result += N[num1]
  end
  puts result
elsif P[0] < P[1]
  puts 0
elsif P[1] == 1
  for num1 in 0..N.size - 1 do
    result += N[num1]
  end
  puts result - max
end