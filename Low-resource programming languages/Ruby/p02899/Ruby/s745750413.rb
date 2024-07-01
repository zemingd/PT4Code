def cc
    n = gets.chomp.to_i

    no = 0
    an = gets.chomp.split(/\s/).map{|x| no += 1; [x.to_i, no]}.sort{|a, b| a[0] <=> b[0]}

    an.each do |bn|
        print "#{bn[1]} "
    end
    puts
end

cc