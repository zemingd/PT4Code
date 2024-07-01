a,b=gets.split..map(&:to_i)
if 13<=a
  puts b
elsif 6<=a<=12
  puts b/2
elsif a<=5
  puts 0
else
  nil
end

