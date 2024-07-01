a, b, c = readline.split.map(&:to_i)
# /a + /b < /c
# (/a + /b) ^2 < /c ^2
# |a| + |b| + /ab< |c|
if Math.abs(a) + Math.abs(b) + Math.sqrt(a*b) < Math.abs(c)
  puts "Yes"
else
  puts "No"
end