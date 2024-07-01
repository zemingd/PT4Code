arr = gets.chomp.split(' ').map(&:to_i)
arr.sort!

if arr == [5, 5, 7]
  puts 'YES'
else
  puts 'NO'
end