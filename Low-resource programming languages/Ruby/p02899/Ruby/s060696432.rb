n=gets.to_i
s=gets.split.map &:to_i
puts s.zip(1..n).map{|x|x[1]}*" "
