n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

k = a.inject(:lcm)
hk = k/2
if hk.even?
  p 0
  exit
end

p (hk + m) / k
