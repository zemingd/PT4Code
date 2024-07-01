N = STDIN.gets.chomp.to_i
p = STDIN.gets.chomp.split(" ").map(&:to_i)

count = 0
for i in 1..(N-2)
  if p[i] < p[i+1] && p[i] > p[i-1] then
    count += 1
  elsif p[i] > p[i+1] && p[i] < p[i-1]
	count += 1
  end
end
  
puts count