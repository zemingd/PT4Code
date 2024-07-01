lines = readlines(chomp: true).map{|line| line.split(' ')}

n = lines[0][0].to_i
k = lines[0][1].to_i
a = lines[1].map!(&:to_i)

last = a[0..k-1].inject(:*)
(k+1).upto(n) do |i|
	current = last / a[i-k-1] * a[i-1]
	if current > last
		puts "Yes"
	else
		puts "No"
	end
	last = current
end