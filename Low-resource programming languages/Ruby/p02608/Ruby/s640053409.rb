# frozen_string_literal: true

N = gets.chomp.to_i

ans = Array.new(N, 0)

(1..100).each do |x|
  (1..100).each do |y|
    (1..100).each do |z|
      n = (x + y + z)**2 - x * y - y * z - z * x
      next if n > N || n < 1

      ans[n - 1] += 1
    end
  end
end

ans_array = (1..N).map do |i|
  ans[i - 1]
end

puts ans_array
