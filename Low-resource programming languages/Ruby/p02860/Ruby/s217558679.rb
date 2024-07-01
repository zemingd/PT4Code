n = gets.to_i
s = gets.chomp

if n % 2 == 0
    if s[0, n/2] == s[n/2, n]
        puts 'Yes'
    else
        puts 'No'
    end
else
    puts 'No'
end