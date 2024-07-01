N=gets.to_i
as=gets.split.map(&:to_i)
ans=0
61.times do |i|
    i=1<<i
    cnt=0
    as.each do |e|
        cnt+=1 if (e & i)!=0
    end
    ans+=i*(cnt)*(N-cnt)
    ans%=1000000007
end
puts ans