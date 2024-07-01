N,X,*M=`dd`.split.map &:to_i
p N+(X-M.reduce(:+))/M.min