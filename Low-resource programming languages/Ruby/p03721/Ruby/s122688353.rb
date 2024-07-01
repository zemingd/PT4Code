N, @K = gets.chop.split.map(&:to_i)
ab = Array.new(N+1, [0, 0])
(1..N).to_a.each do |i|
  ab[i] = gets.chop.split.map(&:to_i)
end

ab.sort! do |a, b|
  a[0] <=> b[0]
end

result = (1..N).to_a.each do |i|
  @K -= ab[i][1]
  break ab[i][0] if @K <= 0
end

puts result