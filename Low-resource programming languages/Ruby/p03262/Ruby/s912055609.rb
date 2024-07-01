n, x = gets.split.map(&:to_i)
xs = gets.split.map { |xi| (xi.to_i - x).abs }

puts xs.inject { |r, xi| r.gcd(xi) }
