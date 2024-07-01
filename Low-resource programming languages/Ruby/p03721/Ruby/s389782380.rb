N, @K = gets.chop.split.map(&:to_i)
AB = Array.new(N+1, [0, 0])
(1..N).to_a.each do |i|
  AB[i] = gets.chop.split.map(&:to_i)
end

AB.sort do |a, b|
  a[0] <=> b[0]
end

result = (1..N).to_a.each do |i|
  @K -= AB[i][1]
  break AB[i][0] if @K <= 0
end

puts result