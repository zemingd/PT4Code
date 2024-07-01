N = gets.chomp.to_i
p = gets.chomp.split(" ").map(&:to_i)

count = 0
for i in 2...N do
  if (p[i-2] < p[i-1] && p[i-1] < p[i]) || (p[i-2] > p[i-1] && p[i-1] > p[i]) then
    count +=1
  end
end

p count
