a = gets.split(" ").map(&:to_s)
b = gets.split(" ").map(&:to_s)
if (a[0][0]==b[0][2])&&(a[0][1]==b[0][1])&&(a[0][2]==b[0][0])
  puts 'YES'
else
  puts 'NO'
end