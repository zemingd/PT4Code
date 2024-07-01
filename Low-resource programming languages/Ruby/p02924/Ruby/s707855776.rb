n = gets.to_i

ns = [*1..n]
ns_d = ns.rotate

if n == 1
  p 0
elsif n == 2
  p 1
else
  p n**2 * 0.5 + n * 0.5 - n
end