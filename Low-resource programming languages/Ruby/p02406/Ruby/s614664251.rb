n = gets.to_i
ans= Array.new()

for i in 1..n
  ans.push(i) if i % 3 == 0 or i.to_s =~ /3/
end

puts " " + ans.to_s.gsub(/[\[\]\,]/, "")