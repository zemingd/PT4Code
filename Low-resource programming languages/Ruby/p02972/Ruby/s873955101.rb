n = gets.to_i
a = gets.split.map(&:to_i)
b=Array.new(n,0)

n.times{|t|
  c = 1
  f = n - (t+1)
  k = 0
  until a[c*(f+1)-1] == nil do
    k += b[c*(f+1)-1]
    c += 1
  end
  if k%2 != a[f] then
    b[f] = 1
  end
}
puts b.inject(:+)
b.each_with_index{|t,i|
 if t == 1 then
  print i+1 , ""
 end
}