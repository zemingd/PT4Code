n = gets.to_i
h = Hash.new{|hash, key| hash[key] = []}
n.times do |i|
  m = gets.to_i
  m.times do |j|
    x, y = gets.split.map(&:to_i)
    h[x] << y
  end
end
res = n
h.each do |k,v|
  res -= 1 if (v.include?(0))
end
if n <= 2 && h.select{|k,v| v.include?(0)}.size == n
  puts n - 1
else
  puts res 
end
