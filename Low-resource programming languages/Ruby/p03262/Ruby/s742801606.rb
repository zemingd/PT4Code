N, X = gets.split.map(&:to_i)
dist = []
gets.split.map do |x|
  dist << (x.to_i - X).abs
end
# p dist
puts dist.inject(dist[0]){|x, y|x.gcd(y)}
