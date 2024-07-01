N, K = gets.split.map(&:to_i)
Vs = gets.split.map(&:to_i)
ans = 0
(K+1).times{|a|
    (K-a+1).times{|b|

        hand = Vs[0...a] + Vs[([N-b,0].max)...N]
        delete_num = K - (a + b)
        tmp_ans = 0
        target = hand.sort
        # p "A=#{a} B=#{b} K=#{delete_num}"
        # p "Vs = #{Vs}"
        # p "Vs_a = #{Vs[0...a]}"
        # p "Vs_b = #{Vs[(N-b)...N]}"
        # p target
        target.each{|x|
            if (x < 0 && delete_num > 0)
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