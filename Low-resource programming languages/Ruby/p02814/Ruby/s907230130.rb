ARG_N, ARG_M = gets.split.map(&:to_i)
ARG_a = gets.split.map(&:to_i)

lcm = ARG_a[0]
1.upto(ARG_N-1) do |i|
  lcm = ARG_a[i].lcm(lcm)
end
res = (ARG_M * 2 / lcm)
if res.even?
  puts res / 2
else
  puts res /2 + 1
end