n = gets.chomp.to_i
a = gets.chomp.split("\s").map(&:to_i)

for i in 0...a.length do
    a[i] = a[i] - i - 1
end

result = Array.new
for i in a.min..a.max do
    tmp = 0
    a.each do |item|
        tmp += (item - i).abs
    end
    result.push(tmp)
end

puts result.min
