# frozen_string_literal: true

_ = gets
h = Hash.new(0)
gets.split.map(&:to_i).each do |i|
  h[i - 1] += 1
  h[i] += 1
  h[i + 1] += 1
end

puts h.max_by { |_, v| v }[1]