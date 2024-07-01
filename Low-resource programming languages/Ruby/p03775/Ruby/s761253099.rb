class Integer
    def factor
        (1..self**0.5).inject([]) {|a, i| a << i if self % i == 0; a}
    end
end

N = gets.to_i

p N.factor.inject(N) {|min, i|
    digits = [i, N/i].max.to_s.size
    min =  digits < min ? digits: min
}