N = gets.to_i
P = gets.split.map(&:to_i)
s = P.sort

diff = 0
(0...N).each do |i|
  if P[i] != s[i]
    diff += 1
  end
end

if diff <= 2
  print "Yes\n"
else
  print "No\n"
end