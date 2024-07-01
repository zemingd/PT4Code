def abc_150_b
    n = gets.chomp.to_i
    s = gets.chomp

    cnt = 0
    st = 0
    s.each_char do |c|
        case c
        when 'A'
            st = (st == 0) ? 1 : 0
        when 'B'
            st = (st == 1) ? 2 : 0
        when 'C'
            cnt += 1 if st == 2
            st = 0
        else
            st = 0
        end
    end

    puts cnt
end

abc_150_b