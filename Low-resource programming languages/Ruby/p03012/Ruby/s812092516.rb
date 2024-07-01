# A=gets.to_i
# B=gets.split.map(&:to_i)
# C=N.times.map{gets.to_i}
# D=N.times.map{gets.split.map(&:to_i)}
# S=gets.chomp
N=gets.to_i
W=gets.split.map(&:to_i)
sum=W.inject(:+)

l=sum
h=0
min=(l-h).abs
W.each do |i|
  l-=i
  h+=i
  min=[min,(l-h).abs].min
end

puts min