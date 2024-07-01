class Integer
    def !
        return 1 if self == 0
        (1..self).inject(:*)
    end
    
    def c(i)
        return 1 if i == 0
        (self-i+1..self).inject(:*) / i.!
    end
end

N, M = gets.split.map(&:to_i)
p N.c(2) + M.c(2)