a,b,c = gets.strip.split.map(&:to_i)
rec = []
for i i 1..b
  rec << (a*i)%b
end
if rec.include?(c)
  puts "YES"
else
  puts "NO"
end
  