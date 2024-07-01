# frozen_string_literal: true

n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)
ans = 0
m = -1
arr.each do |ai|
  if ai >= m
    ans += 1
    m = ai
  end
end
puts ans
