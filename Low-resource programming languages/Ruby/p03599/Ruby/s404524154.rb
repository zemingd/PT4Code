a,b,c,d,e,f = gets.chomp.split(" ").map(&:to_i)
ans = []
tmp = 0
for i in 0..f/(100*a)
  for j in 0..(f-100*a)/(100*b)
    for k in 0..(a*i+b*j)*e/c
      for l in 0..((a*i+b*j)*e-c*k)/d
        if f >= (a*i+b*j)*100+(c*k+d*l) && tmp <= (c*k+d*l).to_f/((a*i+b*j)*100+(c*k+d*l))
          ans = [i,j,k,l]
          tmp = (c*k+d*l).to_f/((a*i+b*j)*100+(c*k+d*l))
        end
      end
    end
  end
end
puts "#{(a*ans[0]+b*ans[1])*100+(c*ans[2]+d*ans[3])} #{(c*ans[2]+d*ans[3])}"