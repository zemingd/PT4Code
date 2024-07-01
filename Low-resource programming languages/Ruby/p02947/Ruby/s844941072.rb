# frozen_string_literal: true

N = gets.to_i
strings = N.times.map { gets.chomp }

exists = {}
strings.each do |string|
  sort_s = string.chars.sort.join
  exists[sort_s] = 0 if exists[sort_s].nil?
  exists[sort_s] += 1
end

puts exists.values.inject(0) { |cnt, v| cnt += (v - 1) * v / 2 }
