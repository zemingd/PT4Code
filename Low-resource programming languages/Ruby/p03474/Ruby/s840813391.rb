a,b = gets.split.map(&:to_i)
s = gets.chomp
s_ar = s.split("-")

if s_ar.count == 0
  puts "No"
  exit
end

if s[a] == "-" && s_ar[0].split("").count <= 9  && s_ar[0].split("").count >= 0 && s_ar[1].split("").count <= 9  && s_ar[1].split("").count >= 0
  puts "Yes"
else
  puts "No"
end
