A,B,C,D=gets.split.map(&:to_i)
l=C.lcm(D)
p (B-A+1)-(B/C-(A-1)/C)-(B/D-(A-1)/D)+(B/(l)-(A-1)/(l))