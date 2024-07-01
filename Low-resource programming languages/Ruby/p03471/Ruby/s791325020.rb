N,Y = gets.chomp.split(' ').map(&:to_i)
xm,ym,zm = [-1,-1,-1]
catch(:break_loop) do
0.upto(N) do |x|
  0.upto(N-x) do |y|
     z = N - x - y
     if 10000*x + 5000*y + 1000*z == Y
       xm,ym,zm = [x,y,z]
       throw :break_loop
     end
  end
end
end
puts "#{xm} #{ym} #{zm}"

      
  