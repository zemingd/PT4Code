n=gets.to_i
arr=[]
n.times { arr << gets.to_i }
puts arr.inject(&:gcd)
