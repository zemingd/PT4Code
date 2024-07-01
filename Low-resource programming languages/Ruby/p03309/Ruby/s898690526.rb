n = gets.chomp.to_i
a = gets.chomp.split("\s").map(&:to_i)

xavg = ((n+1.0) * n / 2.0) / n
yavg = a.inject { |sum, item|
    sum += item.to_f
} / a.length

b1 = (yavg - xavg).floor
b2 = (yavg - xavg).ceil

result = Array.new

tmp = 0
for i in 0...a.length do
    tmp += (a[i] - (b1 + i + 1)).abs
end

result.push(tmp)

tmp = 0
for i in 0...a.length do
    tmp += (a[i] - (b2 + i + 1)).abs
end

result.push(tmp)

puts result.min.to_i
