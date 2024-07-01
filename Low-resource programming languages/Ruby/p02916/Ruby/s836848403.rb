n = gets.to_i
as = gets.to_s.split(' ').map(&:to_i)
bs = gets.to_s.split(' ').map(&:to_i)
cs = gets.to_s.split(' ').map(&:to_i)

score = 0
as.each_with_index do |a, idx|
  score += cs[a - 1] if idx != as.size - 1 && as[idx + 1] == a + 1
  score += bs[a - 1]
end

puts score
