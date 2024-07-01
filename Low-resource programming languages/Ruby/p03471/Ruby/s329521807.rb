N,Y=gets.chomp.split(" ").map{|s| s.to_i}
x,y,z=-1,-1,-1
for t in 0..N
  for u in 0..N-t
    if (10000*t)+(5000*u)+(1000*(N-t-u))==Y
      x,y,z=t,u,N-t-u
    end
  end
end
puts "#{x} #{y} #{z}"