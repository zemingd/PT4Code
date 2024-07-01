d, n = gets.chop.split.map(&:to_i)
if n == 100
  if d == 0
    puts 101
  elsif d == 1
    puts n * 100
  end
elsif
  puts 100 ** d * n
end
