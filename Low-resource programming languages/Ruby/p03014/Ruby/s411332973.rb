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
    if S[x][y] == "#"
      L[x][y] = 0
    elsif y == 0
      L[x][y] = 1
    else
      L[x][y] = L[x][y-1] + 1
    end

    if S[x][W-1-y] == "#"
      R[x][W-1-y] = 0
    elsif y == 0
      R[x][W-1-y] = 1
    else
      R[x][W-1-y] = R[x][W-y] + 1
    end

    if S[x][y] == "#"
      D[x][y] = 0
    elsif x == 0
      D[x][y] = 1
    else
      D[x][y] = D[x-1][y] + 1
    end

    if S[H-1-x][y] == "#"
      U[H-1-x][y] = 0
    elsif x == 0
      U[H-1-x][y] = 1
    else
      U[H-1-x][y] = U[H-x][y] + 1
    end
    y += 1
  end
  x += 1
end

max = 0
x = 0
while x < H
  y = 0
  while y < W
    if max < L[x][y] + R[x][y] + D[x][y] + U[x][y] - 3
      max = L[x][y] + R[x][y] + D[x][y] + U[x][y] - 3
    end
    y += 1
  end
  x += 1
end

puts max