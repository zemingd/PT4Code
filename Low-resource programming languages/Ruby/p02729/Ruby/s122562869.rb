n = ARGV[0].to_i
m = ARGV[1].to_i

puts n
puts m

return false if (n < 0 || m > 100 || n + m < 1)

if n == 0
    puts m * (m -1) / 2
elsif m == 0
    puts n * (n - 1) / 2
elsif n == 1 && m =! 1
    puts m * (m -1) / 2
elsif n != 1 && m == 1
    puts n * (n -1) / 2
else
    puts m * (m -1) / 2 + n * (n -1) / 2
end