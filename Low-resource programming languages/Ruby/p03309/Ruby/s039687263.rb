n = gets.to_i
a = gets.split.map.with_index { |e, idx| e.to_i - idx - 1 }.sort
m = a[n / 2]

puts a.map { |e| (e - m).abs }.sum