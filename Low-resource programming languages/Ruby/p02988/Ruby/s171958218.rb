gets
N = gets.split.map(&:to_i)
counter = 0
(1..(N.count - 2)).each do |i|
  if N[i - 1] < N[i] && N[i] < N[i + 1]
    counter += 1
  elsif N[i - 1] > N[i] && N[i] > N[i + 1]
    counter += 1
  end
end
puts counter