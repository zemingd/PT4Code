# frozen_string_literal: true

n = gets.to_i
a = Array.new(n) { gets.to_i.pred }
tmp = 0

n.times do |i|
  tmp = a[tmp]
  if tmp == 1
    puts i + 1
    exit
  end
end

puts -1