N, K, Q = gets.chomp.split(' ').map(&:to_i)
questions = Q.times.map { gets.to_i }

points = {}
N.times.each { |i| points[i + 1] = 0 }
questions.each do |qu|
  points[qu] += 1
end

points.each do |_, point|
  puts (K - Q + point).positive? ? 'Yes' : 'No'
end
