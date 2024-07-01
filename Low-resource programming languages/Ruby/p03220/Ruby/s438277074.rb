n = gets.to_i
input = gets.chomp.split(' ').map { |v| v.to_i }
t = input[0]
a = input[1]
h = gets.chomp.split(' ').map { |v| v.to_i }

min_diff = (a - (t - h[0] * 0.006)).abs
min_idx = 0
(1...h.length).each { |i|
  diff = (a - (t - h[i] * 0.006)).abs
  if diff < min_diff
    min_diff = diff
    min_idx = i
  end
}

puts min_idx+1