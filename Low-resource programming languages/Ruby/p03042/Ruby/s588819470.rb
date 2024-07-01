s = gets.chomp
a = s[0..1].to_i
b = s[2..-1].to_i

if a == 0 || b == 0
  print("NA")
elsif a > 12 && b > 12
  print("NA")
elsif a > 12
  print("YYMM")
elsif b > 12
  print("MMYY")
else
  print("AMBIGUOUS")
end