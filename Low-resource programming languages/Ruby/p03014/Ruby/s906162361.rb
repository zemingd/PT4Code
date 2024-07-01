str = gets.split
H,W = str[0].to_i, str[1].to_i
L = Array.new(H){Array.new(W)}
R = Array.new(H){Array.new(W)}
D = Array.new(H){Array.new(W)}
U = Array.new(H){Array.new(W)}
S = Array.new(H)

x = 0
y = 0
while x < H
  S[x] = gets.chomp
  x += 1
end

x = 0
while x < H
  y = 0
  while y < W
    L[x][y] = S[x][y] == "#" ? 0 : y == 0 ? 1 : L[x][y-1] + 1
    R[x][W-1-y] = S[x][W-1-y] == "#" ? 0 : y == 0 ? 1 : R[x][W-y] + 1
    D[x][y] = S[x][y] == "#" ? 0 : x == 0 ? 1 : D[x-1][y] + 1
    U[H-1-x][y] = S[H-1-x][y] == "#" ? 0 : x == 0 ? 1 : U[H-1-x][y] = U[H-x][y] + 1
    y += 1
  end
  x += 1
end

max = 0
x = 0
while x < H
  y = 0
  while y < W
    max = max > L[x][y]+R[x][y]+D[x][y]+U[x][y]-3 ? max : L[x][y]+R[x][y]+D[x][y]+U[x][y]-3
    y += 1
  end
  x += 1
end