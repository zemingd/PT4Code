N, K = gets.chomp.split.map(&:to_i)

h = []
N.times do
  h << gets.to_i
end

h.sort!
p h
min = nil
(0...(N - K)).each do |i|
  diff = h[i + K] - h[i]
  if min.nil? || diff < min
    min = diff
  end
end

puts min
