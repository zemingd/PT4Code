def cal(a, b)
  sum = 0
  a.each_with_index do |n,i|
    sum += (n - (b+i+1)).abs
  end
  sum
end

a = $stdin.read.split("\n")[1].split(" ").map(&:to_i)
a1 = []
a.each.with_index(1) do |b, i|
  a1 << (b.to_i - i )
end
a1.sort!
if a1.size % 2 == 0
  i = a1.size / 2
else
  i = a1.size / 2 + 1
end
puts cal(a, a1[i - 1])