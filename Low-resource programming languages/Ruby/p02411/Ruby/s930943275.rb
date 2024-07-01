m, f, r = gets.split.map(&:to_i)
grade = ""

while m != -1 && f != -1 && r !=1
if m == -1 || f == -1
 grade = "F"
elsif m + f >= 80
 grade = "A"
elsif m + f >= 65
 grade = "B"
elsif m + f >= 50
 grade = "C"
elsif m + f >= 30 && r >= 50
 grade = "C"
elsif m + f >= 30 && r < 50
 grade = "D"
elsif m + f < 30
 grade = "F"
end

puts grade

m, f, r = gets.split.map(&:to_i)

end

