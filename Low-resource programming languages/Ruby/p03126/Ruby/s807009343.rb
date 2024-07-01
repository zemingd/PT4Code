n,m = $stdin.gets.split.map(&:to_i)
result = [0]*m
n.times do |i|
  k = $stdin.getc.to_i
  a = $stdin.gets.split.map(&:to_i)
  k.times do |j|
    result[a[j]-1] += 1
  end
end
puts result.count(n)
    