a, b, c = gets.split.map(&:to_i)
puts 1.upto(b / a.gcd(b)).map { |n| n * a % b }.any? { |x| x % b == c } ? 'YES' : 'NO'
