N, x=gets.chomp.split(' ').map{|n| n.to_i}
a =gets.chomp.split(' ').map{|n| n.to_i}
a = a.sort!
count = 0
for i in 0..N-1 do
  if ( x >= a[i] ) 
    x -= a[i]
    count += 1
  end
end
puts count