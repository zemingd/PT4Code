d, n = gets.chomp.split(' ').map(&:to_i)
if n == 100 then
  n += 1
end
puts ((100 ** d) * n).to_s