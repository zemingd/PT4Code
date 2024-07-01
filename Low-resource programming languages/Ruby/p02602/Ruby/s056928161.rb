lines = readlines(chomp: true).map{|line| line.split(' ')}

n = lines[0][0].to_i
k = lines[0][1].to_i
a = lines[1].map!(&:to_i)

(k+1).upto(n) do |i|
	if  a[i-1] > a[i-k-1]
		puts "Yes"
	else
		puts "No"
	end
end
