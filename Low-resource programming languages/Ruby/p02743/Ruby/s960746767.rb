a,b,c = gets.split.map(&:to_f)
x = Math.sqrt(a) + Math.sqrt(b)
y = Math.sqrt(c)

if a+b<c
  puts x<y ? "Yes" : "No"
else
  puts "No"
end
