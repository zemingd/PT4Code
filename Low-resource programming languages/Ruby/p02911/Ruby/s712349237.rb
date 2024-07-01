n, k, q = gets.split.map(&:to_i)
p = Array.new(n, 0)
for i in 0...q do
  a = gets.to_i
  p[a - 1] += 1
end
for j in 0...n do
  if k + p[j] - q > 0
    puts "Yes"
  else
    puts "No"
  end
end
