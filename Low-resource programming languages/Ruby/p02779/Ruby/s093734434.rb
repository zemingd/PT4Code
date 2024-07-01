gets
a = gets.split.map(&:to_i)

if a.size == a.uniq.size
    puts 'Yes'
else
    puts 'No'
end