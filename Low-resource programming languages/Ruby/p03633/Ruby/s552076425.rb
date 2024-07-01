N=gets.to_i
A=[*1..N].map{gets.to_i}
p A.inject(:lcm)