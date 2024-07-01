n,m = $stdin.gets.split.map(&:to_i)
result = [0]*m
n.times do |i|
  a = $stdin.gets.split.map(&:to_i)
  a[1..-1].each do |j|
    result[j-1] += 1
  end
end

puts result.count(n)
    