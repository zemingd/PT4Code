a=gets.chomp.split.map(&:to_i)
b=gets.chomp.split.map(&:to_i)
c=b.sum
if a[0]<c
  puts "Yes"
else puts "No"
end
