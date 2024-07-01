K,A,B=`dd`.split.map &:to_i
puts (A..B).any?{|i|i%K==0}?:OK: :NG