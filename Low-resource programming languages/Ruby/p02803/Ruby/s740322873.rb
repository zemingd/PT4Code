H,W = gets.split.map(&:to_i)
S = readlines.map(&:chomp)

ans = 0
H.times do |y|
  W.times do |x|
    next if S[y][x] == '#'
    s = Array.new(H) { [] }
    s[y][x] = 0
    q = [[y,x]]
    while !q.empty?
      y,x = q.pop
      n = s[y][x]
      ans = n if ans < n
      [y-1,x, y+1,x, y,x-1, y,x+1].each_slice(2) do |y,x|
        next if x < 0 || y < 0 || x >= W || y >= H
        next if s[y][x] != nil
        next if S[y][x] == '#'
        s[y][x] = n + 1
        q << [y,x]
      end
    end
  end
end
puts ans
