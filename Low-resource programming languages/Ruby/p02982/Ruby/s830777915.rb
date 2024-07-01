n, d = gets.chomp.split.map(&:to_i)
x = []
n.times do
  x << gets.chomp.split.map(&:to_i)
end
result = 0
0.upto(n-2) do |i|
  (i+1).upto(n-1) do |j|
    sum = 0
    0.upto(d-1) do |k|
      sum += (x[i][k] - x[j][k]) ** 2
    end
    result += 1 if (Math.sqrt(sum).to_i) ** 2 == sum 
  end
end
puts result