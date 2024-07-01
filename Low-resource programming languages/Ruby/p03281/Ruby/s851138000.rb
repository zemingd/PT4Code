n=gets.to_i
odd=Array.new
for i in 1..n
    if(i%2!=0)
        odd.push(i)
    end
end
ret=0
require 'prime'
odd.each{|i|
    cnt=1
    insu=Prime.prime_division(i)
    a=insu.map{|soi|soi[1]+1}
    a.each{|j|
        cnt*=j
    }
    if cnt==8 then ret+=1 end
}
p ret