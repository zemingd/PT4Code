N = gets.to_i
series = gets.split.map(&:to_i)
list = []

series.each do |i|
  list << i
  list << i + 1
  list << i - 1 
end

result = []

list.each do |j|
  result << list.count(j)
end

puts result.max