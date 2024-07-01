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

def mujun?(root, sj = Set.new, nj = Set.new)
  XY[root].each do |y, flag|
    if (flag == 1 && (XY[y][root] == 0 || nj.include?(y))) ||
      (flag == 0 && sj.include?(y))
      return true
    end
  end
  false
end

ALL = (1..N).to_a
nj = ALL.select {|x| mujun?(x)}
rest = ALL - nj
rest.size.downto(0) do |n|
  rest.combination(n) do |sj|
    if sj.select {|x| mujun?(x, sj, nj)}.empty?
      puts n
      exit
    end
  end
end
puts 0
