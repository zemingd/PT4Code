a,b,c= gets.chomp.split(" ").map(&:to_i);
 
found = false
 
for i in 1..b do
  if a*i%b == c
    found = true
  end
end

if found ==true
  puts "YES"
else
  puts "NO"
end