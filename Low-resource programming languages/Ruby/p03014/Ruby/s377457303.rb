gets;s=$<.to_a;s[-1]<<"#";w=s[0].size;s<<Array.new(w,"#")
c,u,a=Array.new(w,0),Array.new(w,0),0
s.each do |ss|
  t = 0;
  w.times do |i|
     if ss[i] != '.'
       (t...i).each{|j| c[j] = [i-t, c[j]].max;u[j] += 1}
       t = i+1; a = [a, c[i]+u[i]-1].max;c[i] = u[i] = 0;
     end
  end
end
p a