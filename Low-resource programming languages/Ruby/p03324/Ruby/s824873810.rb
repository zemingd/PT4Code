d,n = gets.chomp.split(" ").map(&:to_i)

if d == 0 then
  if n == 100 then
    puts 101
  else
    puts n
  end
elsif d == 1 then
  if n == 100 then
    puts 100 * n + 100
  else
    puts 100 * n
  end
else
  if n == 100 then
    puts 10000 * n + 10000
  else
    puts 10000 * n
  end
end
