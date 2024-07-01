a,b = gets.chomp.split(' ').map!(&:to_i)
if a <= 5
    puts '0'
elsif a.between?(6,12)
    puts b/2
else
    puts b
end
