# frozen_string_literal: true

n = gets.to_i
s = gets.chomp.chars

def rot(c, x)
  ((c.ord - 'A'.ord + x) % 26 + 'A'.ord).chr
end

puts s.map { |e| rot(e, n) }.join
