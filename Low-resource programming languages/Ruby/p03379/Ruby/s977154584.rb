N = gets.chomp.to_i
X = gets.chomp.split.map(&:to_i)
y = X.sort

N.times do |n|
	if X[n]<=y[N/2-1]
		p y[N/2]
	else
		p y[N/2-1]
	end
end