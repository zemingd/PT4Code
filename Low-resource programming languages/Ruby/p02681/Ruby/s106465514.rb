S = gets.chomp
T = gets.chomp

if T[0,S.size] == S then
    if T.size == S.size + 1 then
        puts 'Yes'
    else
        puts 'No'
    end
else
    puts 'No'
end