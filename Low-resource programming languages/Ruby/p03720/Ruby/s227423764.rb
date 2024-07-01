# frozen_string_literal: true

n, m = gets.split(' ').map!(&:to_i)

arr = []
m.times do
  arr.concat(gets.split(' ').map!(&:to_i))
end

count = Hash.new(0)

arr.each do |e|
  count[e] += 1
end

n.times do |i|
  puts count[i + 1]
end
