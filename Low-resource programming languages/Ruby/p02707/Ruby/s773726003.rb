x = Array.new(200001, 0)
n = gets.to_i
a = gets.split.map(&:to_i)

for i in a
  x[i] += 1
end

1.upto a.length+1 do |i|
  puts x[i]
end