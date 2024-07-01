A,B,C,K = gets.split.map &:to_i
x = y = [A,K].min
y = [K-y-B,0].max
p x-y