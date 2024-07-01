# N, A, B = gets.split(" ").map(&:to_i)
S = gets.chomp
# N = gets.to_i

X = %w(Sunny Cloudy Rainy)
case S
when X[0]; puts X[1]
when X[1]; puts X[2]
when X[2]; puts X[0]
end
