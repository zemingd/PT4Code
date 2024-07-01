n = gets.chomp.to_i
s = gets.chomp.to_s

if n % 2 != 0
    puts 'No'
else
    m = n/2
    ans = s.scan(/.{1,#{m}}/)

    if ans[0] == ans[1]
        puts 'Yes'
    else
        puts 'No'
    end
end

