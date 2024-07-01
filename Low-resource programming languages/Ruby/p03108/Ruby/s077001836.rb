# 家に帰ったら整理して
MOD = (10**9) + 7
=begin

# X Y Z K
# A1...AX
# B1...
# C1...

X, Y, Z, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort.reverse
B = gets.split.map(&:to_i).sort.reverse
C = gets.split.map(&:to_i).sort.reverse
V = Array.new

A.each_with_index do |a, i|
  B.each_with_index do |b, j|
    break if (i + 1) * (j + 1) > K

    C.each_with_index do |c, k|
      break if (i + 1) * (j + 1) * (k + 1) > K

      V << (a + b + c)
    end
  end
end

puts V.sort.reverse[0...K]
=end

# X, Y = gets.split.map(&:to_i)
# ans = 0
# num = X
# while num <= Y
#   ans += 1
#   num *= 2
# end

# p ans

=begin

N = gets.to_i

# u -> v , weight = w
# u v w
temp = []
glaph = Array.new(N) { Hash.new }
(N - 1).times do
  u, v, w = gets.split.map(&:to_i)
  glaph[u - 1][v - 1] = w
  glaph[v - 1][u - 1] = w
end

gone = Array.new(N) { true }
ans = Array.new(N)
queue = [0]

ans[0] = true
gone[0] = true

while curr = queue.shift
  glaph[curr].each do |k, v|
    if gone[k]
      gone[k] = false
      ans[k] = (v%2 == 0) ? ans[curr] : !ans[curr]
      queue << k
    end
  end
end

ans.each { |a| puts a ? '1' : '0' }

=end

# abc121D
# input
# A B
# 123 456
# output
# 435
# A..BのXOR

# a, b = gets.split.map(&:to_i)
# ans = 0
# if a%2 == 1
#   ans = ans ^ a
#   a += 1
# end
# if b%2 == 0
#   ans = ans ^ b
#   b -= 1
# end
# ans = ans ^ (((b - a + 1)/2)%2)
# p ans

# abc120D
# input
# N M
# A1 B1
# ...
# AM BM
# 6 5
# 2 3
# 1 2
# 5 6
# 3 4
# 4 5
# output
# 8
# 9
# 12
# 14
# 15

class UnionFindWithSize
  def initialize(size)
    @rank = Array.new(size) { 0 }
    @parent = Array.new(size) { |id| id }
    @union_size = Array.new(size) { 1 }
  end

  def unite(id_x, id_y)
    x_parent = get_parent(id_x)
    y_parent = get_parent(id_y)
    return if x_parent == y_parent

    ary = [@union_size[x_parent], @union_size[y_parent]]
    if @rank[x_parent] > @rank[y_parent]
      @parent[y_parent] = x_parent
      @union_size[x_parent] += ary[1]
    else
      @parent[x_parent] = y_parent
      @union_size[y_parent] += ary[0]
      @rank[y_parent] += 1 if @rank[x_parent] == @rank[y_parent]
    end
    ary
  end

  def get_parent(id_x)
    @parent[id_x] == id_x ? id_x : (@parent[id_x] = get_parent(@parent[id_x]))
  end
end

n, m = gets.split.map(&:to_i)
bridges = Array.new(m) { Array.new(2) }
uf = UnionFindWithSize.new(n)
m.times do |i|
  bridges[i] = gets.split.map {|j| j.to_i - 1 }
end
ans = []
curr_value = n * (n-1) / 2
ans << curr_value
bridges.reverse_each do |u, v|
  if diff = uf.unite(u, v)
    curr_value -= diff[0] * diff[1]
  end
  ans << curr_value
end

puts ans.reverse[1..-1]