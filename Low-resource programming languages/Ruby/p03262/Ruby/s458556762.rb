n, x = gets.split.map(&:to_i)
points = gets.split.map(&:to_i)

puts points.map { |point|
  (point - x).abs
}.inject { |result, distance|
  result.gcd(distance)
}
