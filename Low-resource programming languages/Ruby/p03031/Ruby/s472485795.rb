# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
s = Array.new(m) { gets.split.map(&:to_i).map(&:pred) }
s.map(&:shift)
p = gets.split.map(&:to_i)
cnt = 0

(2**n).times do |b|
  if s.each_with_index.all? { |e, idx| e.count { |j| b[j] == 1 } % 2 == p[idx] }
    cnt += 1
  end
end

puts cnt