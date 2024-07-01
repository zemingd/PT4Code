# n = gets.split.map(&:to_i)
# array = readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }


n = gets.to_i
t,a = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)


res = 0
min = 10000000000000
h.each_with_index do |g,i|
  k = ((t - g * 0.006) - a).abs
  if min > k
    min = k
    res = i+1
  end
end

puts res.to_i


