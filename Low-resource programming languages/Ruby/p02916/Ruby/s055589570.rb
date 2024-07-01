# frozen_string_literal: true

_ = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)

s = 0
before = -1

A.each do |i|
  s += B[i - 1]
  s += C[before - 1] if i == before.succ
  before = i
end

puts s