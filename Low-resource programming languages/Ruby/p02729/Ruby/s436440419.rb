n, m = STDIN.gets.split.map(&:to_i)
k = -> (num) { num * (num - 1) / 2 }
puts k.call(n) + k.call(m)