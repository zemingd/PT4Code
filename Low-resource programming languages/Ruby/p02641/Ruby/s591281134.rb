x,n=gets.split.map(&:to_i)
if n==0
  puts x
  exit
end
p=gets.split.map(&:to_i)
m=100
0.upto(101) do |i|
  if (i-x).abs<m&&!p.include?(i)
    m=(i-x).abs
    n=i
  end
end
puts n
