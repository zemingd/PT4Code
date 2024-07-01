N = gets.to_i
A = gets.split.map(&:to_i)
B = A.each_with_index.map{|v,i| v - (i + 1) }
B.sort!

def f(b)
  B.map{|v| (v - b).abs }.sum
end

if N.even?
  b = (B[N/2] + B[N/2 - 1]) / 2
  puts [f(b), f(b + 1)].min
else
  b = B[N/2]
  puts f(b)
end
