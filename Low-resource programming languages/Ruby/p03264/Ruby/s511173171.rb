io = STDIN
n,k=io.gets.split.map(&:to_i)

if k.even?
  x=n/k
  y=(n+k/2)/k
  puts x**3+y**3
else
  puts (n/k)**3
end
