def cc
    n = gets.chomp.to_i
    aa = gets.chomp.split(/\s/).map{|x| x.to_i}.sort

    until aa.length == 1
        b = aa[0]
        aa = [aa[0]] + aa[1..-1].map {|a| a%b == 0 ? 0 : (a-b).abs}
        aa.delete(0)
        aa = aa.sort
    end

    puts aa[0]
end

cc