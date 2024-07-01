N=gets.to_i
array=gets.chomp.split(" ").map(&:to_i)
maxim=array.max
D=Array.new(maxim+1)
c=2
while c<=maxim do
    n=c
    while n<=maxim do
        D[n]||=c
        n+=c
    end
    c+=1
end
def divisors(n)
    memo={}
    while n!=1 do
        memo[D[n]]=true
        n=n/D[n]
    end
    memo.keys
end
MEMO={}
setwise=false
array.each do |a|
    divisors(a).each do |p|
        MEMO[p] ||= 0
        MEMO[p]+=1
        if MEMO[p] == N
            puts "not coprime"
            exit
        end
        if MEMO[p] > 1
            setwise=true
        end
    end
end
if setwise
    puts "setwise coprime"
else
    puts "pairwise coprime"
end
