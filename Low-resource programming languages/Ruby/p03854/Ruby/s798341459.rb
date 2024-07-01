s = gets.chomp
i = s.size - 1

while i > 0
    if s[i - 4 .. i] =~ /dream|erase/
        i -= 5
    elsif s[i - 5 .. i] =~ /erase/
        i -= 6
    elsif s[i - 6 .. i] =~ /dreamer/
        i -= 7
    else
        puts "NO"
        exit
    end
end

puts "YES"