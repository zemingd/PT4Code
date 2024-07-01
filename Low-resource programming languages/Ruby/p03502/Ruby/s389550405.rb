g = STDIN.gets

d = 0

for i in 0..(g.length - 1)
	d = d + g[i].to_i
end

r = g.to_i

if r % d == 0
	puts "Yes"
else
	puts "No"
end