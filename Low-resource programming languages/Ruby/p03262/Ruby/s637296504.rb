n, x = gets.to_s.split(" ").map(&:to_i)
xs = gets.to_s.split(" ").map(&:to_i).map { |xx| (xx - x).abs }
ans = xs.inject(xs[0]) { |memo, item| memo.gcd(item) }
puts ans
