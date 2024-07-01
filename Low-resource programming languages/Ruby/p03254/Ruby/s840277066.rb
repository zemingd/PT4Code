DBG = !true
n,x = gets.split.map{|z| z.to_i}
a = gets.split.map{|z| z.to_i}

a.sort!
print a if DBG
cnt = 0
for i in 0...a.size
  puts "i #{i} x #{x} cnt #{cnt}" if DBG
  x -= a[i]
  cnt += 1
  if x < 0
    cnt -= 1
    break
  end
end
print cnt - (x>0 ? 1 : 0)
