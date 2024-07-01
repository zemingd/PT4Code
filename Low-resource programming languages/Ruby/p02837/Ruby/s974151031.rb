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

def mujun?(root, nj = Set.new)
  XY[root].each do |y, flag|
    if flag == 1 && (XY[y][root] == 0 || nj.include?(y))
      return true
    end
  end
  false
end

def dfs(root, sj_base = Set.new, nj_base = Set.new)
  sj = Set.new + sj_base
  nj = Set.new + nj_base
  if mujun?(root, nj) || nj.include?(root)
    nj << root
    return [sj, nj]
  end

  visited = sj + nj
  sj << root
  stack = [root]
  while !stack.empty?
    n = stack.pop
    next if visited.include?(n)
    visited << n
    next unless sj.include?(n)
    XY[n].each do |y, flag|
      if flag == 1 && !mujun?(y, nj)
        sj << y
      else
        nj << y
      end
      stack << y
    end
  end
  [sj, nj]
end

ans = 0
1.upto(N) do |x|
  sj, nj = dfs(x)
  a = (sj & nj).size > 0 ? 0 : sj.size

  rest = (1..N).to_a - (sj | nj).to_a
  loop do
    break if rest.empty?
    i = rest.pop
    ssj, nnj = dfs(i, sj, nj)
    a += (ssj & nnj).size > 0 ? 0 : (ssj - sj).size
    sj += ssj
    nj += nnj
    rest -= (ssj | nnj).to_a
  end
  ans = a if a > ans
end

puts ans
