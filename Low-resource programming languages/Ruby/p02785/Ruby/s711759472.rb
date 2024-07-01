P = gets.chomp.split(' ').map(&:to_i)
N = gets.chomp.split(' ').map(&:to_i)

pil = P[1]

max = N.max

result = 0

if P[1] == 1
  puts max
elsif P[1] == 0
  for num1 in 0..N.size - 1 do
    result += N[num1]
  end
  puts result
elsif P[1] != 1 && pil == max
  puts 0
else
  puts (max / pil) + 1
end
