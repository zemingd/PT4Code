N = gets.to_i
P = gets.split.map(&:to_i)
Q = gets.split.map(&:to_i)

i = 0
pindex = 0
qindex = 0

(1..N).to_a.permutation(N) do |perm|
  pindex = i if perm == P
  qindex = i if perm == Q

  i += 1
end

puts (pindex - qindex).abs
