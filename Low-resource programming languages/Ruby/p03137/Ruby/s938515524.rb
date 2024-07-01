n,m = gets.split.map(&:to_i)
xs = gets.split.map(&:to_i)
xs.sort!
diff = []
m.times do |i|
  break if xs[i+1].nil?
  diff << xs[i+1] - xs[i]
end

diff.sort!
(n-1).times do
  diff.pop
end
ans = diff.reduce(0){|a,e| a+=e}

puts ans