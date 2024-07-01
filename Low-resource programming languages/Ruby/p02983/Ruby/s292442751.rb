# A=gets.to_i
# B=gets.split.map(&:to_i)
# C=N.times.map{gets.to_i}
# D=N.times.map{gets.split.map(&:to_i)}
# S=gets.chomp
# MOD=1000000007

L,R=gets.split.map(&:to_i)


lp=L%2019
rp=R%2019
if rp<=lp
  rp+=2019
end

m=2019
(lp..(rp-1)).each do |i|
  ((i+1)..rp).each do |j|
    m=[m,i*j%2019].min
  end
end

puts m