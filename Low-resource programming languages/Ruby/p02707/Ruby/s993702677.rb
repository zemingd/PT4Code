# frozen_string_literal: true
n = gets.chomp.to_i
ar = gets.chomp.split.map(&:to_i)

ans = Array.new(n, 0)

ar.each do |num|
  ans[num - 1] += 1
end

puts ans
