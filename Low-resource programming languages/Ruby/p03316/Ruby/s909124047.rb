def digsum(n)
    ret = 0
    while n > 0
        ret += n % 10
        n /= 10
    end
    ret
end

n = gets.chomp.to_i

if n % digsum(n) == 0
    puts "Yes"
else
    puts "No"
end
