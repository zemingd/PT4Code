N, K = gets.split.map(&:to_i)
Vs = gets.split.map(&:to_i)
ans = 0
(K+1).times{|a|
    (K-a).times{|b|
        hand = Vs[0...a] + Vs[(N-b)...N]
        delete_num = K - (a + b)
        tmp_ans = 0
        target = hand.sort
        # p "A=#{a} B=#{b} K=#{delete_num}"
        # p target
        target.each{|x|
            if (x < 0 && delete_num != 0)
                delete_num -= 1
            else 
                tmp_ans += x
            end
        }
        # p "tmp_ans = #{tmp_ans}"
        ans = [ans, tmp_ans].max
    }
}

puts ans