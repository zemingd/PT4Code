N = gets.chomp

arr = [N[0], N[1], N[2]]

if N[0] != '7' then
    if N[1] != '7' then
        if N[2] != '7' then
            puts 'No'
        else
            puts 'Yes'
        end
    else
        puts 'Yes'
    end
else
    puts 'Yes'
end
