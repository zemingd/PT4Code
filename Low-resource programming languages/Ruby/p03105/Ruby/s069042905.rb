a = gets.strip
# n, h, w = $stdin.read.split("\n").map(&:to_i)
a,b,c = a.split(" ").map(&:to_i)
if b / a >= c
  puts c
else
  puts b / a
end