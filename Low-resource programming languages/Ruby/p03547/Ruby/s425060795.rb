s = STDIN.gets
s.chomp!
n = s.split(' ')
n[0] = n[0].to_i(16)
n[1] = n[1].to_i(16)
if n[0] < n[1]
	puts "<"
elsif n[0] > n[1]
	puts ">"
else
	puts "="
end
