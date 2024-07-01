S = gets.chomp
a = 0

while a == 0

    if S.split('')[S.size-1] == 'r' && S.split('')[S.size-2] == 'e' && S.split('')[S.size-3] == 's' && S.split('')[S.size-4] == 'a' && S.split('')[S.size-5] == 'r' && S.split('')[S.size-6] == 'e'

        S.slice!(S.size-6,6)

    elsif S.split('')[S.size-1] == 'e' && S.split('')[S.size-2] == 's' &&S.split('')[S.size-3] == 'a' && S.split('')[S.size-4] == 'r' && S.split('')[S.size-5] == 'e'

        S.slice!(S.size-5,5)

    elsif S.split('')[S.size-1] == 'r' && S.split('')[S.size-2] == 'e' && S.split('')[S.size-3] == 'm' && S.split('')[S.size-4] == 'a' && S.split('')[S.size-5] == 'e' && S.split('')[S.size-6] == 'r' && S.split('')[S.size-7] == 'd' 
      
        S.slice!(S.size-7,7)

    elsif S.split('')[S.size-1] == 'm' && S.split('')[S.size-2] == 'a' && S.split('')[S.size-3] == 'e' && S.split('')[S.size-4] == 'r' && S.split('')[S.size-5] == 'd'

        S.slice!(S.size-5,5)

    else

        a += 1

    end

end

if S.size == 0

    puts 'YES'

else

    puts 'NO'

end