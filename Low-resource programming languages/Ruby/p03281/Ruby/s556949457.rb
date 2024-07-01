n=gets.chomp.to_i

ans = 0
2.upto(n) do |m|
    next if m%2==0
    pf = Hash.new(0)
    i=2
    mm=m
    while m>=i**2
        if mm%i==0
            pf[i]+=1
            mm/=i
        else
            i+=1
        end
    end
    c=1
    pf.each do |k,v|
        c*=(v+1)
    end
    if c == 8
        ans +=1
    end
end

puts ans