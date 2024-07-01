X, N = gets.strip.split(' ').map(&:to_i)
P = gets.strip.split(' ').map(&:to_i)

res = []

s = 0
while res.empty? do
    res.push(X - s) unless P.include?(X - s)
    res.push(X + s) unless P.include?(X + s)
    s += 1
end
puts res.min