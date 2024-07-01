N,K=gets.chomp.split(" ").map{|i| i.to_i}
daisu=[]
maxv=0

daisu=gets.chomp.split(" ").map{|i| i.to_i}

(N-K+1).times do |i|
  K.times do |j|
    nowmax=0
    nowmax+=daisu[i+j]
    if maxv<nowmax
    	maxv=nowmax
    end

  end
end

puts (maxv+K) / 2.0