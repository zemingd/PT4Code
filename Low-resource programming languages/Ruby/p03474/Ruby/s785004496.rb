a,b = gets.split.map(&:to_i)
s = gets.chomp
s_ar = s.split("-")

if s[a] != "-"
  puts "No"
  exit
end

if s_ar[0].split("").count <= 9  &&  s_ar[1].split("").count <= 9
  puts "Yes"
else
  puts "No"
end
