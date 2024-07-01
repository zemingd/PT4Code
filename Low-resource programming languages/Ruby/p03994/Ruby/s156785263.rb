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
if k > 0
    r=(ret[-1].ord - aord + k) % 26
    ret[-1]=(r + aord).chr
end
puts ret
