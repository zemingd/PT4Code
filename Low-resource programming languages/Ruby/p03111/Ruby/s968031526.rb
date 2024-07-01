def bits(int)
    res=0
    while 0<int
        res+=1 if int%2==1
        int/=2
    end
    return res
end
N,A,B,C=gets.split.map(&:to_i)
ls=N.times.map{gets.to_i}
ans=Float::INFINITY
[0,1,2].repeated_permutation(N) do |es|
    as=Array.new
    bs=Array.new
    cs=Array.new
    N.times do |i|
        as.push(i) if es[i]==0
        bs.push(i) if es[i]==1
        cs.push(i) if es[i]==2
    end
    next if as.empty? || bs.empty? || cs.empty?
    res=0
    cnt=Float::INFINITY
    (2**(as.size)).times do |i|
        next if i==0
        ii=i.clone
        jd=0
        (as.size).times do |j|
            jd+=ls[as[j]] if ii%2==1
            ii/=2    
        end
        jd=(A-jd).abs+(bits(i)-1)*10
        cnt=jd<cnt ? jd : cnt
    end
    res+=cnt

    cnt=Float::INFINITY
    (2**(bs.size)).times do |i|
        next if i==0
        ii=i.clone
        jd=0
        (bs.size).times do |j|
            jd+=ls[bs[j]] if ii%2==1
            ii/=2    
        end
        jd=(B-jd).abs+(bits(i)-1)*10
        cnt=jd<cnt ? jd : cnt
    end
    res+=cnt

    cnt=Float::INFINITY
    (2**(cs.size)).times do |i|
        next if i==0
        ii=i.clone
        jd=0
        (cs.size).times do |j|
            jd+=ls[cs[j]] if ii%2==1
            ii/=2    
        end
        jd=(C-jd).abs+(bits(i)-1)*10
        cnt=jd<cnt ? jd : cnt
    end
    res+=cnt
    ans=res<ans ? res : ans
end
puts ans