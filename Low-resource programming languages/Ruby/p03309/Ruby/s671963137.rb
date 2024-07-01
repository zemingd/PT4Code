n = gets.chomp.to_i
a = gets.chomp.split("\s").map(&:to_i)

xavg = ((n+1.0) * n / 2.0) / n
yavg = a.inject { |sum, item|
    sum += item.to_f
} / a.length

b = (yavg - xavg).round

result = 0
for i in 0...a.length do
    result += (a[i] - (b + i + 1)).abs
end

puts result.to_i
