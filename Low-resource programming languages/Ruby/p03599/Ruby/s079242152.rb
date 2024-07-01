a,b,c,d,e,f=gets.split.map(&:to_i)
m=0
ans=[0,0]
0.upto(f/(a*100)) do |aa|
  0.upto((f-aa*a*100)/(b*100)) do |bb|
    next if aa==0&&bb==0
    0.upto((aa*a+bb*b)*e/c) do |cc|
      dd=[f-(aa*a+bb*b)*100-cc*c,((aa*a+bb*b)*e-cc*c)/d].min
      next if dd<0
      if (aa*a+bb*b)*100+cc*c+dd*d<=f&&m<=(cc*c+dd*d)/(aa*a+bb*b).to_f
        m=(cc*c+dd*d)/(aa*a+bb*b).to_f
        ans=[(aa*a+bb*b)*100+cc*c+dd*d,cc*c+dd*d]
      end
    end
  end
end
puts ans.join(" ")
