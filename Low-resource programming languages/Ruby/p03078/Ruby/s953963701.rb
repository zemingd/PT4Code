x,y,z,k=gets.split(' ').map(&:to_i)
#h=gets.split(' ').map(&:to_i)
#tajigen = Array.new(4) { Array.new(2,0) }
a=gets.split(' ').map(&:to_i)
b=gets.split(' ').map(&:to_i)
c=gets.split(' ').map(&:to_i)

xy = Array.new
k_count = 0
for i in 0..x-1
  for j in 0..y-1
    xy.push(a[i]+b[j])
    #break if k_count >=k
  end
end

xy.sort!.reverse!
xy_new = Array.new
while k_count<k && xy[k_count]
  xy_new[k_count]=xy[k_count]
  k_count+=1
end
#puts xy
#c.sort!.reverse!

=begin
count =0
xy_count = 0
z_count = 0
while count<k
  if z_count >=z
      z_count=0
      xy_count+=1
  end
  ans = (xy[xy_count])+(c[z_count])
  z_count+=1
  count += 1
  puts ans
end
=end

abc = Array.new

for i in 0..(xy_new.length-1)
  for j in 0..z-1
    abc.push(xy_new[i]+c[j])
  end
end

abc.sort!.reverse!
=begin
if k<x*y*z
  k=x*y*z
end
=end
for i in 0..k-1
  puts abc[i]
end
