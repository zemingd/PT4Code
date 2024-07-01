N, M = gets.split.map(&:to_i)
h = Hash.new { |h, k| h[k] = [] }
arr = []
cnt = 0

N.times do
  a, b = gets.split.map(&:to_i)
  h[a] << b
end

1.upto(M) do |i|
  arr += Array(h[i])
  cnt += arr.sort!.pop unless arr.empty?
end

p cnt
