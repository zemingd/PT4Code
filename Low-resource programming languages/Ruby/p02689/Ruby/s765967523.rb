# frozen_string_literal: true

n, m = gets.split(' ').map(&:to_i)
list = gets.split(' ').map(&:to_i)
calc = Array.new(n)
(0...m).each do |_|
  n1, n2 = gets.split(' ').map(&:to_i)
  if list[n1 - 1] == list[n2 - 1]
    calc[n1 - 1] = 1
    calc[n2 - 1] = 1
  elsif list[n1 - 1] > list[n2 - 1]
    calc[n2 - 1] = 1
  else
    calc[n1 - 1] = 1
  end
end
puts calc.filter(&:nil?).count
