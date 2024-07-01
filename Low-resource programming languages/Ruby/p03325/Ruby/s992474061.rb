require 'prime'

n = gets.to_i
line = gets.chomp.split(' ').map(&:to_i)

cnt = 0

line.each do |i|
  factors = Prime.prime_division i
  factors.each do |f|
    cnt += f[1] if (f[0] == 2)
  end
end

puts cnt