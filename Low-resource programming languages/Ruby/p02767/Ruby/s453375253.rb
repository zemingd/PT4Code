n = gets.to_i
xs = gets.split.map(&:to_i)

min = -1

xs_min = xs.min
xs_max = xs.max

(xs_min..xs_max).to_a.each do |i|
    tmp = xs.inject(0) { |result, num| result + (num - i) ** 2 }
    # puts "i: [#{i}], tmp: [#{tmp}]"
    min = tmp if min == -1 || tmp < min
end

puts min
