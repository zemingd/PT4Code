def cc
    n,q = gets.chomp.split(/\s/).map{|x| x.to_i}
    s = gets.chomp
    ss = []
    for i in 1..q
        l,r = gets.chomp.split(/\s/).map{|x| x.to_i}
        #ss.push(s[l-1..r-1].scan(/AC+/).length) # TLE
        tt = s[l-1..r-1]
        ss.push((tt.length - tt.gsub('AC', '').length)/2)
    end

    for i in 1..q
        puts ss[i-1]
    end
end

cc
