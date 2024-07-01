# frozen_string_literal: true

_n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

MAX = 10**18

ans = a.reduce do |acm, ai|
  new_acm = acm * ai
  if new_acm > MAX
    puts '-1'
    exit
  end
  new_acm
end

puts ans
