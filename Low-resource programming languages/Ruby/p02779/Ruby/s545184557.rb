n = gets.to_i
a = gets.split.map(&:to_i)
if a.uniq == a
  puts 'YES'
else
  puts 'NO'
end