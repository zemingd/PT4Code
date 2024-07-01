def comp(gen,i,j)
    ht0=Hash.new
    gen[i].each{|key,value|
       str=""
       value.each{|v|
          str+=v.to_s
       }
       ht0.store(key,str+str)
    }
    ht=Hash.new
    gen[j].each_key{|key|
       if gen[i].has_key?(key)==false then
          return false
       end
       arr=gen[j][key]
       str=""
       arr.each do |v|
           str+=v.to_s
       end
       ht.store(key,str)
    }
    ht.each{|key,value|
       if ht0[key].include?(value)==false then
          return false
       end
    }
    return true
end

def generate(src,lbl)
     gen=Hash.new
     src.each{|key,arr|
       r=Array.new
       arr.each{|v|
         r.push(lbl[v])
       }
       gen.store(lbl[key],r)
     }
     return gen
end

src={1=>[2,3,5,4],
     2=>[1,4,6,3],
     3=>[1,2,6,5],
     4=>[2,1,5,6],
     5=>[3,6,4,1],
     6=>[2,4,5,3]}

gen=Hash.new

n=gets.to_i
n.times do |p|
    lbl=Hash.new
    mp=gets.split(' ').map(&:to_i)
    mp.each_with_index {|x,i|
       lbl.store(i+1,x)
    }
    gen.store(p,generate(src,lbl))
end
res="Yes"
for i in 0..n-1 do
for j in i+1..n-1 do
if comp(gen,i,j) == true then
    res="No"
    break
end
end
end
puts res