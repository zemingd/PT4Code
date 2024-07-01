n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
if a.size == a.uniq.size
  puts 'YES'
else
  puts 'NO'
end
