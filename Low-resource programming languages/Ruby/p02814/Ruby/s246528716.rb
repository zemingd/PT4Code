ARG_N, ARG_M = gets.split.map(&:to_i)
ARG_a = gets.split.map(&:to_i)

lcm = ARG_a[0] / 2
d = 1
while ARG_a[0] % (2**(d+1)) == 0 do
  d+=1
end
div = 2**d
1.upto(ARG_N-1) do |i|
  if ARG_a[i] % div != 0 || (ARG_a[i] / div).even?
    puts 0
    exit
  end
  lcm = (ARG_a[i]/2).lcm(lcm)
end
res = (ARG_M / lcm)
if res.even?
  puts res / 2
else
  puts res /2 + 1
end