ret = gets
def check(a)
  (a.size-1).times {|i| break i  if a[i] >= a[i+1] }
end
while a = gets.scan(/\d+/).map(&:to_i) rescue nil
  x = check(a)
  if x < a.size-1
    [[x,a[a[x]-1]], [a[x]-1,a[x]]].each {|i,n| a[i]=n}
    x += check(a[x..-1])
  end
  puts( x==a.size-1 ? 'YES' : 'NO')
end