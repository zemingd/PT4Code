(n,q)=gets.split.map(&:to_i)

parent = (0...n-1).map{gets.split.map(&:to_i)}.sort_by{|a,b|b}.map{|a,b|a}
px = (0...q).map{gets.split.map(&:to_i)}.group_by{|p,x|p}.map{|p,v| [p,v.map{|p,x|x}.reduce(:+)] }.to_h


tmp=(0...n).map{0}

(0...n).each{|i|
    tmp[i]+=tmp[parent[i-1]-1] if i>0
    tmp[i]+=px[i+1] if px[i+1] != nil
}

print tmp.join(" ")