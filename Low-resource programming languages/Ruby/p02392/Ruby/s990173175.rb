a = gets.split(' ').map(&:to_i)

if(a[0] >= a[1])
   puts "No"
elsif(a[1] >= a[2])
  puts "No"
else
  puts "Yes"
end
