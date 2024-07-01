n = gets.to_i
a = gets.split.map(&:to_i)
b = Array.new(n + 1) { 0 }

a.reverse_each.with_index do |e, idx|
  b[n - idx] = 1 if e != Array.new(n / (n - idx) - 1) { |i| b[(n - idx) * (i + 2)] }.sum % 2
end

ret = b.filter_map.with_index { |e, idx| idx if e == 1 }

if ret.size != 0
  puts ret.size
  puts ret.join(' ')
else
  puts 0
end