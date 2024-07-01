n,l = gets.strip.split.map(&:to_i)
ary = Array.new(n,0)
for i in 1..n
  ary[i-1] = (l-1+i).abs
end
puts (n-1)*(l-1)+n*(n+1)/2-(ary.index(ary.min))-1
