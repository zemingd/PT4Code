n, d = gets.chomp.split.map(&:to_i)
x = []
n.times do |i|
  x[i] = gets.chomp.split.map(&:to_i)
end

count = 0
(0..(n-2)).each do |i|
  (i+1..(n-1)).each do |j|
    distdist = 0
    d.times do |k|
      distdist += (x[i][k] - x[j][k])**2
    end
    count += 1 if ((distdist**0.5).round)**2 == distdist
  end
end

puts(count)