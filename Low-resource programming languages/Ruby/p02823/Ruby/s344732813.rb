n,a,b = gets.split.map(&:to_i)

if (b - a).even?
    puts (b - a) / 2
else
    puts [a + (b - a) / 2, (n - b) + 1 + (b - a) / 2].min
end