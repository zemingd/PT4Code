n = gets.to_i
strs = gets.chomp.split(' ').map(&:to_i)

if strs.uniq.size == n
  puts 'YES'
else
  puts 'NO'
end