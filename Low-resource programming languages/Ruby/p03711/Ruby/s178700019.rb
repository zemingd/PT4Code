a,b=gets.split.map(&:to_i)
if a==2 && b==2
  puts "Yes"
elsif a==2 || b==2
  puts "No"
else
  aa = [4,6,9,11].include?(a)
  bb = [4,6,9,11].include?(b)
  puts(aa ^ bb ? "No" : "Yes")
end
  