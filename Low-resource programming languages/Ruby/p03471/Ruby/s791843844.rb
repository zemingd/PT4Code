N,Y,x,y,z=gets.split.map(&:to_i),-1,-1,-1
(n+1).times{|i|(n+1-i).times{|j|x,y,z=i,j,n-i-j if i*10000+j*5000+(n-i-j)*1000 == Y}}
puts "#{x} #{y} #{z}"