n, k = gets.chomp.split(" ").map(&:to_i)
d = [0,0,0,0,0,0,0,0,0,0,0]
dds = gets.chomp.split(" ").map(&:to_i)
(0...k).each{|dd|
    d[dds[dd]] = 1
}
#dds.each{|dd|
#    d[dd] = 1
#}

(0..10000).each{|v|
    s = v.to_s
    has_kirai = false
    (0..9).each{|vv|
        if d[vv] == 1 && s.include?(vv.to_s)
            has_kirai = true
        end
    }
    if has_kirai
        next
    end
    if v >= n
        puts s
        exit
    end
}
puts "10000"