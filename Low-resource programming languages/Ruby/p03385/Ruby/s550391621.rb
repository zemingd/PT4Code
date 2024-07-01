a,b,s = gets.chomp.split(" ").map(&:to_i)
result = []
for x in a..a+s-1 do
  result << x
end

for y in b-s+1..b do
  result << y
end


result.uniq.sort.each do |z|
  puts z
end
