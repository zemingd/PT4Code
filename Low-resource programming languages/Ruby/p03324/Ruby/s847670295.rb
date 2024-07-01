d, n = gets.chop.split.map(&:to_i)
if n == 100 then n = 101 
  if d == 0
    puts n
  elsif d == 1
    puts n * 100
  else
    puts 100 ** 2 * n
end
