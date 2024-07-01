N,K,Q = gets.split(' ').map(&:to_i)
points = Array.new(N+1, 0)
Q.times do
  a = gets.to_i
  points[a] += 1
end
(1..N).each do |i|
  puts K - Q + points[i] > 0 ? 'Yes' : 'No'
end
