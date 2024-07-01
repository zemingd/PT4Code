A, B, C = gets.chomp.split(' ').map(&:to_i)
if C-(A-B)<0
    puts 0
else
    puts C-(A-B)
end