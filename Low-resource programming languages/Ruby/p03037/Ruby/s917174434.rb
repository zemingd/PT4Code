N,M=gets.chomp.split.map(&:to_i)
l, r = M.times.map{gets.split.map(&:to_i)}.transpose

key_chain=[]
key_check=[]

(1..N).each{|no|
    key_chain << no
}

M.times{|m|
    key_check=[]
    (l[m]..r[m]).each{|no|
        key_check << no
    }
    key_chain=key_chain&key_check
}

p key_chain.length