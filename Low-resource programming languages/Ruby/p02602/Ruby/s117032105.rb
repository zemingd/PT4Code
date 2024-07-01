lines = readlines(chomp: true).map{|line| line.split(' ')}

n = lines[0][0].to_i
k = lines[0][1].to_i
a = lines[1].map!(&:to_i)

(k).upto(n-1) do |i|
	if a[i] * a[i-1] * a[i-2] > a[i-1] * a[i-2] * a[i-3]
		puts "Yes" 
	else
		puts "No" 
	end
end