a = gets.chomp.split(" ").sort!.map(&:to_i).join

if a.include?('557')
    puts 'YES'
else
    puts 'NO'
end