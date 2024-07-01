gets
a = gets.split.map(&:to_i)

if a.size == a.uniq.size
    puts 'YES'
else
    puts 'NO'
end