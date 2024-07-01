N = gets.to_i
X = gets.split(' ').map(&:to_i)
y = X.sort
s = y[N / 2]
t = y[N / 2 - 1]
N.times do |i|
  if X[i] >= s
    puts t
  else
    puts s
  end
end