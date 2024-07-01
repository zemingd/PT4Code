a, b, c = readline.split.map(&:to_i)
# /a + /b < /c
# (/a + /b) ^2 < /c ^2
# |a| + |b| + 2/ab < |c|
# |a| + |b| - |c| < - 2/ab
# a^2+b^2+c^2+2ab-2bc-2ca < 4ab
if a*a+b*b+c*c+2*a*b-2*b*c-2*c*a<4*a*b
  puts "Yes"
else
  puts "No"
end