A = gets.to_i
B = gets.to_i
C = gets.to_i
D = gets.to_i
E = gets.to_i

AC = A.ceil(-1)
BC = B.ceil(-1)
CC = C.ceil(-1)
DC = D.ceil(-1)
EC = E.ceil(-1)

diff = [AC-A, BC-B, CC-C, DC-D, EC-E].max
puts AC + BC + CC + DC + EC - diff
