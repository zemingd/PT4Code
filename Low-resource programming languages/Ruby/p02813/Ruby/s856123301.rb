N = gets.chop.to_i
P = gets.chop.split(' ').map(&:to_s).join
Q = gets.chop.split(' ').map(&:to_s).join

# DFSで長さNの組み合わせを全検索実装

$n = (1..N).map(&:to_s)

def factorial(n)
  return 1 if n == 0
  return n * factorial(n - 1)
end

def dfs(ptns)
  stack = ['']
  max = factorial(N)

  until ptns.length == max
    str = stack.pop
    ptns << str if str.length == N

    unless str.length == N
      $n.each do |i|
        unless str.include?(i)
          stack << str + i
        end
      end
    end
  end

  return ptns
end

ptns = []

f = dfs(ptns)
f.sort!

pp = f.index(P)
qp = f.index(Q)

puts (pp - qp).abs
