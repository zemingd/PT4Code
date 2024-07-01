x,k,d = gets.split.map(&:to_i)
x = x.abs
a = [(x - k*d).abs]
a.push(x % d) if k - (x / d) >= 0 && (k - (x / d)).even?
a.push((x % d - d).abs) if k - (x / d) + 1 >= 0 && (k - (x / d) + 1).even?
puts a.min