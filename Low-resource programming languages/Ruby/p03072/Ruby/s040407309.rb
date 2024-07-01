def bb
	n = gets.chomp.to_i
	h = gets.chomp.split(/\s/).map{|x| x.to_i}

    r = 1
    for i in 2..n
        c = h[i-1]
        chk = true
        h[0..i-2].each do |x|
            if c < x
                chk = false
                break
            end
        end

        r += 1 if chk
    end

    puts r
end

bb
