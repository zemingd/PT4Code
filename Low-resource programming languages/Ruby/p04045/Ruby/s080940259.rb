def like?(dislikes, numbers)
  (dislikes & numbers).empty?
end

n, k = gets.strip.split(' ').map(&:to_i)
d = gets.strip.split(' ').map(&:to_i)

result = 0
100000.times do |price|
  next if price < n

  result = price
  numbers = price.to_s.split('').map(&:to_i)
  break if like?(d, numbers)
end

p result


