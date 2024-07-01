n = gets.to_i
arr = []
n.times do
  arr << gets.to_s
end
max = arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
max_value = max.max_by{|_, v| v}[1]

for k, v in max
  puts k if v == max_value
end
