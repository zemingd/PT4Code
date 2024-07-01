n,*a=`dd`.split.map(&:to_i)
puts a.delete_if(&:odd?).all?{|i|i%3==0||i%5==0} ? "APPROVED" : "DENIED"