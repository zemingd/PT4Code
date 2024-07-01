x = gets.to_i
def o(v,c)
  s = [5,6]
  2.times do |i|
    v -= s[i]
    c += 1
    break if v <= 0
  end
  return c
end

c = 0
if x <= 11
  c = o(x,c)
else 
  a = x.divmod(11)
  c = a[0] * 2
  c = o(a[1],c) if a[1] >= 1
end

p c
