N,M=gets.chomp.split.map(&:to_i)
l, r = M.times.map{gets.split.map(&:to_i)}.transpose

if l.max > r.min 
    return 0
end

key_chain=[*l[0]..r[0]]
key_check=[]
 
M.times{|m|
    key_check=[]
    (l[m]..r[m]).each{|no|
        key_check << no
    }
    key_chain=key_chain&key_check
}
 
p key_chain.length