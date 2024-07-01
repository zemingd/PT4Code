a,b = gets.split.map(&:to_i)
s = gets.chomp
s_ar = s.split("-")

if s[a] == "-" && s.split("").count("-") == 1
 puts "Yes"
else
 puts "No"
end
