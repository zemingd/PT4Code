x = [59049, 46656, 7776, 6561, 1296, 729, 216, 81, 36, 9, 6, 1]


a = [0]
(0...100000).each do |i|
  x.each do |j|
    a[i + j] = [a[i] + 1, a[i + j] || 99999999].min
  end
end

n = gets.to_i
puts a[n]