a=gets.split(' ').map(&:to_s)
b=Array.new
a.each{|v|
   case v
   when '+' then
        v1=b.pop.to_i
        v2=b.pop.to_i
        b.push(v2+v1)
   when '-'
        v1=b.pop.to_i
        v2=b.pop.to_i
        b.push(v2-v1)
   when '*'
        v1=b.pop.to_i
        v2=b.pop.to_i
        b.push(v2*v1)
   else
        b.push(v)
   end
}
p b.pop