#N=gets.to_i
#S=gets.chomp
#A=(0...N).map{gets.to_i}
#sum=A.inject(&:+)
#B=gets.split.map(&:to_i)
 
N=gets.to_i

dict=[]

N.times do |i|
  s,pi=gets.split
  pi=pi.to_i
  dict << [s,-pi,i+1]
end
puts dict.sort.map{|a,b,c| c}