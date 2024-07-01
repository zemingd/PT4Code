# frozen_string_literal: true

s = gets

min = 753
(0...s.length - 2).each do |i|
  min = (753 - s[i, 3].to_i).abs if (753 - s[i, 3].to_i).abs < min
end

puts min
