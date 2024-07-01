n = gets.chomp.to_i
p = gets.chomp.split(&:to_i)
count = 0
for i in 1..n-2
  count += 1 if (p[i-1] > p[i] && p[i+1] < p[i]) || (p[i-1] < p[i] && p[i+1] > p[i])      
end
puts count