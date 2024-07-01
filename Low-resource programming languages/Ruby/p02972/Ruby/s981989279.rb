N = gets.to_i
A = gets.split.map(&:to_i).unshift(nil)

cur = Array.new(N + 1, 0)

(N).downto(1) do |i|
  balls = i.step(N, i).inject(0) { |sum, j| sum + cur[j] }

  cur[i] = 1 if balls % 2 != A[i]
end

ans = cur.map.with_index { |a, i| i if a > 0 }.compact
puts ans.size
puts ans.join(' ') if ans.size > 0