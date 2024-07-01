# frozen_string_literal: true

_ = gets.to_i
a = gets.split.map(&:to_i)
q = gets.to_i
rep = (1..q).map { |_n| gets.split.map(&:to_i) }

q.times do |n|
  a = a.map { |v| v == rep[n][0] ? rep[n][1] : v }
  puts a.sum
end
