# frozen_string_literal: true

n = gets.to_i
s = gets.chomp
h = Hash.new(0)
max = 0

1.upto(n - 1) do |i|
  h.clear
  s[0...i].chars.uniq.each { |c| h[c] += 1 }
  s[i..-1].chars.uniq.each { |c| h[c] += 1 }
  tmp = h.values.count { |e| e == 2 }
  max = tmp if max < tmp
end

puts max