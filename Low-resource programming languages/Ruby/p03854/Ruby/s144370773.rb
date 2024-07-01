s=gets.chomp
l=s.size
i=0
while i<=l
    if s[-i-5,5]=='dream'||s[-i-5,5]=='erase'
        i+=5
    elsif s[-i-7,7]=='dreamer'
        i+=7
    elsif s[-i-6,6]=='eraser'
        i+=6
    elsif i==l
        puts 'YES'
        break
    else
        puts 'NO'
        break
    end
end