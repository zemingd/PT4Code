n = gets.to_i
a = []
idx = 1
n.times do
  x,y = gets.split
  y = y.to_i
  a.push( [ x, y, idx ] )
  idx += 1
end

a.sort!{ |a, b| ( a[0] <=> b[0] ).nonzero? || (b[1] <=> a[1] ) }
a.each do |x|
  puts x[2]
end