def gcd(a, b)
  gcd(b, a) if b > a
  return b if (r = a % b).zero?
  gcd(b, r)
end

points = [gets.split(" ").last.to_i] + gets.split(" ").map(&:to_i)

distances = []
points.sort.each_cons(2) { |a, b| distances << b - a }
distances = distances.uniq.sort.reverse
puts distances.inject(distances.first) { |ans, dist| gcd ans, dist }
