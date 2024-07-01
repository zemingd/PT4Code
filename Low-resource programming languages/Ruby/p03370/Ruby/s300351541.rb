line = gets.chomp.split(' ')
n = line[0].to_i
max = line[1].to_i

min = 100000

for i in 1..n
  d_one = gets.to_i
  max -= d_one
  if (d_one < min)
    min = d_one
  end
end

puts n + max/min