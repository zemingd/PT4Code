d, n = gets.chop.split.map(&:to_i)
if n == 100 then n = 101 end
puts 100 ** d * n
