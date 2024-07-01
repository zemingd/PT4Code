s = gets.chomp!.to_s
ls = ["SUN", "SAT", "FRI", "THU", "WED", "TUE", "MON"]

if s == "SUN"
  puts 7
else
  p ls.index(s)
end