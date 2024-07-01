d, n = gets.split("\s").map(&:to_i)

if n == 10
  n = 11
end

print 100 ** d * n
