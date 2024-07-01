N,*A=`dd`.split.map &:to_i
puts A.zip(1..N).sort.map{|_,i|i}*" "