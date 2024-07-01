H,W = gets.split.map(&:to_i)

A = []
q = []
H.times do |y|
  A << gets.chars[0, W].map {|a| a == '#' ? 0 : -1 }
  A[y].each_with_index {|a,x| q << [x, y] if a == 0 }
end

ans = 0
while q.size > 0
  x,y = q.shift

  ans = A[y][x] + 1

  q << [x-1, y].tap {|x,y| A[y][x] = ans } if x-1 >= 0 && A[y][x-1] < 0
  q << [x+1, y].tap {|x,y| A[y][x] = ans } if x+1 < W  && A[y][x+1] < 0
  q << [x, y-1].tap {|x,y| A[y][x] = ans } if y-1 >= 0 && A[y-1][x] < 0
  q << [x, y+1].tap {|x,y| A[y][x] = ans } if y+1 < H  && A[y+1][x] < 0
end
puts ans - 1
