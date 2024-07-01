s = gets.chomp.split('').map(&:to_s)
if s.uniq.count == 1
    puts 'No'
else
    puts 'Yes'
end
