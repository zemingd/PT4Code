def area r
  r * r * 3.1415926
end

def circumference r
  r * 2 * 3.1415926
end

r = gets.chomp.to_f
printf "%.6f %.6f\n", area(r), circumference(r)