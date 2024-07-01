require "prime"
n=gets.to_i
a=gets.split.map(&:to_i)

pc_memo={}
pc=true

a.each{|x|
    x.prime_division.each{|t,_|
        if pc_memo[t]==1
            pc=false
        end
        pc_memo[t]=1
        }
    }


if pc
    print "pairwise coprime"
    exit
end

sc = a.reduce(:gcd) == 1
if sc
    print "setwise coprime"
    exit
end

print "not coprime"