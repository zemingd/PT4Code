N, K = gets.split.map(&:to_i)
H = N.times.map { gets.to_i }.sort

diff_min = Float::INFINITY
s = 0
e = K - 1
while e < N do
  diff = H[e] - H[s]
  # p "s: #{s}, e: #{e}, diff: #{diff}, #{diff_min}"
  diff_min = diff if diff_min > diff

  s += 1
  e += 1
end

puts diff_min

__END__
5 3
10
15
11
14
12
