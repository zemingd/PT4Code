A,B,C,K = `dd`.split.map &:to_i
p K <= A ? K : K <= A + B ? A : A - [C, K - A - B].min