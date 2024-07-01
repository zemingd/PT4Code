n = gets.to_i

ns = [*1..n]
ns_d = ns.rotate

if n == 1
  p 0
elsif n == 2
  p 1
else
  p (n + 1) * n / 2 - n
end