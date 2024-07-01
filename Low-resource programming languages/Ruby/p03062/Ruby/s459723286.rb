_ = gets.to_i
a = gets.split.map(&:to_i)

minus_count = a.select(&:negative?).count

result = if minus_count.even?
  a.map(&:abs).reduce(:+)
else
  list = a.map(&:abs)
  min = list.min
  list.reduce(:+) - min*2
end

puts result
