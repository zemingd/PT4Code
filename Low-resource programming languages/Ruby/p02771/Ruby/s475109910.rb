a = gets.chomp.split.map(&:to_i)
a.sort!

if a[0] != a[2] && (a[0] == a[1] || a[1] == a[2])
  puts "Yes"
else
  puts "No"
end