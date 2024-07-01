P = gets.chomp.split(' ').map(&:to_i)
N = gets.chomp.split(' ').map(&:to_i)

max = N.max

unless P[1] == 0
  cond = max % P[1]
end
result = 0

if P[1] == 1
  puts max
elsif P[1] == 0
  for num1 in 0..N.size - 1 do
    result += N[num1]
  end
  puts result
elsif cond == 0 && P[1] != 1
  puts 0
end
