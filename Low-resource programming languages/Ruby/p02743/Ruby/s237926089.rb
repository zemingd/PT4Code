a, b, c = readline.split.map(&:to_i)
# /a + /b < /c
# (/a + /b) ^2 < /c ^2
# |a| + |b| + 2/ab < |c|
if a + b + 2*Math.sqrt(a*b) < c
  puts "Yes"
else
  puts "No"
end