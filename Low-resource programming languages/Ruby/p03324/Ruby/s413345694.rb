d,n = gets.chomp.split.map(&:to_i)
if n == 100
    puts 100**d*101
else
    puts 100**d*n
end