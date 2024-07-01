N = gets.to_i
d = gets.chomp.split(" ").map(&:to_i)
heal = 0
n = 0

for i in 0..N-1
  for j in i+1..N-1
    n = d[i] * d[j]
    heal = heal + n
  end
end
puts heal