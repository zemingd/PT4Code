n = gets.chomp.to_i
a = gets.chomp.split("\s").map(&:to_i)

for i in 0...a.length do
    a[i] = a[i] - i
end

a.sort!
b = a[a.length / 2]

result = 0
a.each do |item|
  result += (item - b).abs
end

puts result