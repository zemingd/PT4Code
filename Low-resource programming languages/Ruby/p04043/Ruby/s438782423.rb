a = gets.chomp.split().map(&:to_i)
a.sort!

if a[0]==5 && a[1]==5 && a[2] == 7
  puts 'YES'
else
  puts 'NO'
end
