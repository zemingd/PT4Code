n=gets.to_i
a=gets.split.map(&:to_i)
s=0
a.each{|i|(i/=2;s+=1)while i%2==0}
puts s