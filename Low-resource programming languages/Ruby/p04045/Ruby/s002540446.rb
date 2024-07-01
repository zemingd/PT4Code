n,k=gets.split.map(&:to_i)

np=n.to_s.chars.size

a=["0","1","2","3","4","5","6","7","8","9"] - gets.split

np.upto(6){|w|
    a.repeated_permutation(w){|s|
        next if s[0]=="0"
        if (s*"").to_i>=n
            p (s*"").to_i;exit
        end
    }
}