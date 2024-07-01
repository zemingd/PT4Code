d, n = gets.chomp.split(" ").map(&:to_i)
first = 100 ** d
ans = 100 ** d
if n != 100
    puts first * n
else
    puts (first * n) + ans
end