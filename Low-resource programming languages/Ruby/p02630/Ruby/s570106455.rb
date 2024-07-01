n=gets.to_i
a=gets.split.map(&:to_i)
q=gets.to_i
bc=(0...q).map{gets.split.map(&:to_i)}


ah=a.each_with_object({}){|x,memo| memo[x]||=0;memo[x]+=1 }
s=a.sum


bc.each{|qb,qc|
    ah[qb]||=0
    ah[qc]||=0
    s+= (ah[qb]*(qc-qb))
    ah[qc]+=ah[qb]
    ah[qb]=0
    print s,"\n"
}

