N, C = gets.split.map(&:to_i)

max_t = 10**5
programs =  Array.new(max_t+1){ Array.new(30){false} }
 
N.times do
  s, t, c = gets.split.map(&:to_i)
  c -= 1
  (s..t).each { |i| programs[i][c] = true }
end

ans = 0
(1..max_t).each do |i|
  cnt = programs[i].count(true)
  ans = cnt if ans < cnt
end
 
puts ans