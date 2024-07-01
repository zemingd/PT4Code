def comp(gen1,gen2,i,j)
    p1=Array.new
    p2=Array.new
    for x in 1..6 do
       p1.push(gen2[i][x])
       p2.push(gen2[j][x])
    end
    if p1.sort != p2.sort then
       return false
    end

    ht0=Hash.new
    gen1[i].each{|key,value|
       str=""
       value.each{|v|
         str+=v.to_s
       }
       ht0.store(key,str+str)
    }

    ht1=Hash.new
    gen1[j].each{|key,value|
       str=""
       value.each{|v|
         str+=v.to_s
       }
       ht1.store(key,str)
    }

    ht0.each{|key0,value0|
    ht1.each{|key1,value1|
       if value0.include?(value1)==true then
          if ht0[7-key0].include?(ht1[7-key1])
             if gen2[i][key0]==gen2[j][key1] && gen2[i][7-key0]==gen2[j][7-key1] then
                return true
             end
          end
       end
    }
    }
    return false
end

def generate(src,lbl)

     gen=Hash.new
     src.each{|key,arr|
       r=Array.new
       arr.each{|v|
         r.push(lbl[v])
       }
       gen.store(key,r)
     }
     return gen
end

src={1=>[2,3,5,4],
     2=>[1,4,6,3],
     3=>[1,2,6,5],
     4=>[2,1,5,6],
     5=>[3,6,4,1],
     6=>[2,4,5,3]}

gen1=Hash.new
gen2=Hash.new
n=gets.to_i
n.times do |p|
    lbl=Hash.new
    mp=gets.split(' ').map(&:to_i)
    mp.each_with_index {|x,i|
       lbl.store(i+1,x)
    }
    gen1.store(p,generate(src,lbl))
    gen2.store(p,lbl)
end
res="Yes"
for i in 0..n-1 do
for j in i+1..n-1 do
if comp(gen1,gen2,i,j) == true then
    res="No"
    break
end
end
end
puts res