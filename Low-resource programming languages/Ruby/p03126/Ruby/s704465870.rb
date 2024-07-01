N, M = gets.chomp.split(' ').map(&:to_i)
input = Array.new(N) { gets.chomp.split(' ').map(&:to_i) }
ans = 0
(1..M).each do |i|
  count = 0
  input.each do |j|
    count += 1 if j[1..-1].include?(i)
  end
  ans += 1 if count == N
end
puts ans
