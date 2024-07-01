n = gets.to_i
t, a = gets.strip.split.map(&:to_i)
h = gets.strip.split.map(&:to_i)

abs_arr = []

n.times do |i|
    abs_arr << ((t - h[i] * 0.006) - a).abs
end

p abs_arr.index(abs_arr.min)

puts abs_arr.index(abs_arr.min) + 1