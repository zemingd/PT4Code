N, Q = gets.chomp.split(" ").map(&:to_i)
C = Hash.new{|h, k| h[k] = []}
(N - 1).times{
  a, b = gets.chomp.split(" ").map(&:to_i)
  C[a] << b
  C[b] << a
}

Pa = Array.new(N + 1)
Pa.map!{Array.new}
stk = [1]
parent = []
until stk.empty? do
  pa = stk.pop
  (parent.pop; next) if pa == -1
  parent.push(pa)
  parent.each{|p| Pa[p] << pa}
  stk.push(-1)
  C[pa].each{|child|
    next if parent.include?(child)
    stk.push(child)
  }
end

ans = Array.new(N + 1, 0)
Q.times{
  p, x = gets.chomp.split(" ").map(&:to_i)
  Pa[p].each{|i|
    ans[i] += x
  }
}

ans.shift
puts ans.join(' ')
