a, b = gets.chomp.split.map(&:to_i)

a_str = a.to_s
a_index = a - 1
a_index.times do
        a_str += a.to_s
end

b_str = b.to_s
b_index  = b - 1
b_index.times do
        b_str += b.to_s
end

puts a_str <= b_str ? a_str : b_str
