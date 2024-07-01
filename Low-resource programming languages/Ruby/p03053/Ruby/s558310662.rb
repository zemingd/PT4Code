H,W = gets.split.map(&:to_i)
A = Array.new(H) { gets.split(/\n?/) }

q = []
(H*W).times {|i| q << [i%W, i/W, 0] if A[i/W][i%W] == '#' }
p q.size

ans = 0
while q.size > 0
  x,y,i = q.shift

  A[y][x] = '#'

  q << [x-1, y, i+1] if x-1 >= 0 && A[y][x-1] == '.' && A[y][x-1] = '#'
  q << [x+1, y, i+1] if x+1 < W  && A[y][x+1] == '.' && A[y][x+1] = '#'
  q << [x, y-1, i+1] if y-1 >= 0 && A[y-1][x] == '.' && A[y-1][x] = '#'
  q << [x, y+1, i+1] if y+1 < H  && A[y+1][x] == '.' && A[y+1][x] = '#'

  ans = i if ans < i
end
puts i