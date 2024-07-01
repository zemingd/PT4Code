# coding: utf-8
class UnionFind
  def initialize(n)
    @Parent = Array.new(n, -1)
  end

  def root(a)
    if @Parent[a] < 0 then
      a
    else
      @Parent[a] = root(@Parent[a])
    end
  end

  def size(a)
    -@Parent[root(a)]
  end

  def connect(a, b)
    a = root(a)
    b = root(b)
    if a == b then
      false
    end

    if a < b then
      a, b = b, a
    end

    @Parent[a] += @Parent[b]
    @Parent[b] = a

    true
  end
end

n, m = STDIN.gets.chomp.split(" ").map(&:to_i)
a = Array.new(0)
b = Array.new(0)

for i in 1..m
  tmpa, tmpb = STDIN.gets.chomp.split(" ").map(&:to_i)
  a.push(tmpa)
  b.push(tmpb)
end

uni = UnionFind.new(n)

ans = Array.new(m)
ans[m - 1] = n * (n - 1) / 2

(1..(m-1)).reverse_each do |i| 
  tmpa, tmpb = a[i] - 1, b[i] - 1
  if uni.root(tmpa) != uni.root(tmpb) then
    ans[i-1] = ans[i] - uni.size(tmpa) * uni.size(tmpb)
  else
    ans[i-1] = ans[i]
  end
  uni.connect(tmpa, tmpb)
end

for i in 0..(m-1)
  puts ans[i]
end
