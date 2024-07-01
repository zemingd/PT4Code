n = gets.to_i
p = n.to_s.split("").map(&:to_i)
sum = 0
for i in 0...p.length do
	sum += p[i]
end
if n % sum == 0 then
	puts "Yes"
else
	puts "No"
end