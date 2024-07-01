a = gets.split().map(&:to_i)
if a[2] < 0 || a[3] < 0
   puts "No"
else
   if (a[2] + a[4]) > a[0] || (a[3] + a[4]) > a[1]
      puts "No"
   elsif a[0] == a[2] || a[1] == a[3]
      puts "No"
   else
      puts "Yes"
   end
end
