# 家に帰ったら整理して

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
