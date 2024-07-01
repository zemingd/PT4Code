K=gets.to_i
A,B=gets.split.map(&:to_i)
A.upto(B){|i|
  if i%K==0
    puts "OK"
    exit
  end
}
puts "NG"