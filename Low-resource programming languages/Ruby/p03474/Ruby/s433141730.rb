a,b = gets.split.map(&:to_i)
s = gets.chomp
s_ar = s.split("-")
if s_ar != nil
  puts "No"
  exit
end
if s_ar[0].split("").count == 3 && s_ar[1].split("").count ==4
  puts "Yes"
else
  puts "No"
end
