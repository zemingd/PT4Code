def r;gets.split.map &:to_i;end
N,M,C = r
B = r
c = 0
N.times do
  a = r
  c += 1 if a.zip(B).map{|(a,b)|a*b}.inject(:+) + C > 0
end
p c