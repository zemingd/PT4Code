N,M=gets.chomp.split.map(&:to_i)
l, r = M.times.map{gets.split.map(&:to_i)}.transpose

key_chain=[]

(1..N).each{|no|
    key_chain << no
}

M.times{|m|
    (key_chain.first..key_chain.last).each{|no|
        if no<l[m] || r[m]<no
            key_chain.delete(no)
        end
    }
}

p key_chain.length