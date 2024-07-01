N, K = gets.split(' ').map(&:to_i)
def prob(i) 1.quo(N) * 1.quo(2)**Math.log2(K.quo(i).ceil).ceil end
p [*1..N].map { |x| prob(x) }.sum