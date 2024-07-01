n = gets.to_i
a = gets.split.map(&:to_i)
x = Array.new(n+1, 0)

for i in a
  x[i] += 1
end

1.upto a.length+1 do |i|
  puts x[i]
end