N,K,*L=`dd`.split.map(&:to_i)
p L.sort[-K..-1].inject(:+)