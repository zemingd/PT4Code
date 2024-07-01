class Integer
    def div_cnt
        (1..self).each_with_object([]) {|i, a| a << i if self % i == 0}.size
    end
    
    def div_8_cnt
        (1..self/2+1).inject(0) {|sum, i| sum = (2*i-1).div_cnt == 8 ? sum + 1 : sum}
    end
end

N = gets.to_i
puts N.div_8_cnt