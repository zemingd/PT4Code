N, C = gets.split.map(&:to_i)

max_t = 10**5
 
programs =  Array.new(C){ Array.new(max_t+1, false) }
 
N.times do |i|
  s, t, c = gets.split.map(&:to_i)
  c -= 1
  (s..t).each { |j| programs[c][j] = true }
end

ans = 0
(1..max_t).each do |i|
  tmp = 0
  C.times{ |j| tmp += 1 if programs[j][i] }
  ans = tmp if ans < tmp
end
 
puts ans