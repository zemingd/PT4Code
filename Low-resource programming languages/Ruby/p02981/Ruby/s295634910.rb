n, a, b = gets.chomp.split(" ").map(&:to_i)

if b <= n * a
    puts b
elsif
    puts n * a
end

