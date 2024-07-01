a1,a2,a3 = gets.split(' ').map(&:to_i)
sum = a1+a2+a3
if sum >= 22
    puts 'bust'
else
    puts 'win'
end
