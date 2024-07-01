a=gets.split.map(&:to_i).sort

if a[0] + a[1] == a[2]
  puts "YES"
else
  puts "NO"
end