a,b,c =gets.split.map(&:to_i)
b.times do |i|
if a*i%b==c then puts "YES"
else then puts "NO" end