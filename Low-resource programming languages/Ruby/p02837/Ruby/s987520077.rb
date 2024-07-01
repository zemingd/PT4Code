N = gets.chomp.to_i
A = Array.new(N+1)
XY = Array.new(N+1)
1.upto(N) do |x|
  A[x] = gets.chomp.to_i
  XY[x] = {}
  A[x].times do
    y, flag = gets.chomp.split(" ").map(&:to_i)
    XY[x][y] = flag
  end
end

require "set"

def mujun?(root)
  XY[root].each do |y, flag|
    if flag == 1 && XY[y][root] == 0
      return true
    end
  end
  false
end

def dfs(root)
  return 0 if mujun?(root)

  visited = Set.new
  sj = Set.new
  nj = Set.new
  sj << root
  stack = [root]
  while !stack.empty?
    n = stack.pop
    next if visited.include?(n)
    visited << n
    next unless sj.include?(n)
    XY[n].each do |y, flag|
      if flag == 1
        sj << y
      else
        nj << y
      end
      stack << y
    end
  end
  rest = (1..N).to_a - visited.to_a
  rest.each do |i|
    XY[i].each do |y, flag|
      if (flag == 0 && sj.include?(y)) || (flag == 1 && nj.include?(y))
        nj << i
        break
      end
    end
    sj << i unless nj.include?(i)
  end
  if (sj & nj).size > 0
    0
  else
    sj.size
  end
end

ans = 0
1.upto(N) do |x|
  a = dfs(x)
  ans = a if a > ans
end

puts ans
