N, K, Q = gets.split.map(&:to_i)
A = []
Q.times do
  A << gets.to_i
end

points = Array.new(N, 0)

A.each do |a|
  ind = a-1
  points[ind] += 1
end

N.times do |ind|
  if K - Q + points[ind] > 0
    puts 'Yes'
  else
    puts 'No'
  end
end
