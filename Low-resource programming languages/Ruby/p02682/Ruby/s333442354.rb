a,b,c,k = gets.chomp.split.map(&:to_i)

sum = 0

if k - a <= 0
    puts(a)
elsif k - (a + b) <= 0
    puts(a)
else
    puts(a - (k - (a + b)))
end

