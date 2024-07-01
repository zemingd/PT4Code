n = gets.to_i
a = gets.split(" ").map(&:to_i)

h = {}
a.each do |x|
  h[x] ||= 0
  h[x] += 1
end

sum = 0
h.each do |k, v|
  sum += v * (v-1) / 2
end

a.each do |x|
  puts sum - (h[x] - 1)
end