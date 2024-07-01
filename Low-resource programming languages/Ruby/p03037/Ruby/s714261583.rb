N,M=gets.chomp.split.map(&:to_i)
l,r = M.times.map{gets.split.map(&:to_i)}.transpose

key_chain=[*l[0]..r[0]]
key_check=[]

M.times{|m|
    key_check=[]
    (key_chain.first..key_chain.last).each{|no|
        if l[m]<=no && no<=r[m]
            key_check << no
        end
    }
    key_chain=key_chain&key_check
}

p key_chain.length