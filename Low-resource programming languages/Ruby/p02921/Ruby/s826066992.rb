S = gets
T = gets

r = [0,1,2].map do |n|
    S[n] == T[n] ? 1 : 0
end.reduce(:+)
puts r