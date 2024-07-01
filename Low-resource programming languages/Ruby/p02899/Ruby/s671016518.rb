N=gets.to_i
puts gets.split.map(&:to_i).zip(1..N).sort.map{|_,i|i}*" "