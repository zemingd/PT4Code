N = gets.to_i
P = gets.split.map &:to_i
Q = gets.split.map &:to_i
ps = [*1..N].permutation(N).to_a

a = ps.index P
b = ps.index Q

p (a - b).abs