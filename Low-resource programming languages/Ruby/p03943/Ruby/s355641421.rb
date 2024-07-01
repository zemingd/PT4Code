a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i

if a+b==c || a+c==b || b+c==a then
puts"Yes"
else
puts"No"
end
