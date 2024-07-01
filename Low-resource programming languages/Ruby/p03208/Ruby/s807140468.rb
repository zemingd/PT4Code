n, k = gets.split.map(&:to_i)
hs = []
n.times do
  hs << gets.to_i
end

hs.sort!

min = 10000000000000
0.upto(n - k) { |left|
  right = left + k - 1
  min = [hs[right] - hs[left], min].min
}

p min
