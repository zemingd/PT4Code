a = gets.split().map(&:to_i)
if a[0]+a[1] > a[2]+a[3]
  puts "Left"
elsif a[0]+a[1] == a[2]+a[3]
  puts "Balanced"
else
  puts "Right"
end