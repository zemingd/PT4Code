a,b = gets.chomp.split.map(&:to_i)
# p a,b
if a*b%2==1
    puts 'yes'
else
    puts 'no'
end