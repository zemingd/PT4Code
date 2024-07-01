# frozen_string_literal: true

_ = gets
h = gets.split.map(&:to_i)
max = h[0]
count = 1

h[1..-1].each do |e|
  if e >= max
    count += 1
    max = e
  end
end

puts count