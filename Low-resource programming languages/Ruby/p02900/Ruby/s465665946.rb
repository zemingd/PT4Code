require 'prime'
A, B = gets.split.map(&:to_i)
b = [A, B].max
s = [A, B].min
c = 1
Prime.each(b / 2).each do |i|
  c += 1 if (b % i).zero? && (s % i).zero?
end
puts c
