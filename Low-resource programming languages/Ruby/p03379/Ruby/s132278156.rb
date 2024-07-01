N = gets.to_i
X = gets.split.map(&:to_i)
a = X.sort[(N/2)-1]
b = X.sort[(N/2)]
X.each do |x|
    puts x <= a ? b : a
end