n, *a = $stdin.read.split.map(&:to_i)

bool = a.select(&:even?).all? { |x| x % 3 == 0 || x % 5 == 0 }

puts bool ? :APPROVED : :DENIED

