H,W = gets.split.map(&:to_i)

A = []
q = []
H.times do |y|
  s = gets.chomp
  A << Array.new(W) do |x|
    if s[x] == '#'
      q << [x,y]
      0
    else
      -1
    end
  end
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
