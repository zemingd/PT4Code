s=gets.chomp
k=gets.to_i
zord="z".ord
aord="a".ord
ret=""
s.each_char do |c|
    need=zord-c.ord+1
    break if k==0
    if k >= need
        ret+="a"
        k-=need
    else
        ret+=c
    end
end
ret[-1]=(ret[-1].ord + k%26).chr
puts ret
