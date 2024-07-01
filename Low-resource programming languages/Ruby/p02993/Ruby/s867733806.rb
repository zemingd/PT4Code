# A=gets.to_i
# B=gets.split.map(&:to_i)
# C=N.times.map{gets.to_i}
# D=N.times.map{gets.split.map(&:to_i)}
# S=gets.chomp
# MOD=1000000007


A=gets.chomp

if A[0]==A[1] || A[1]==A[2] || A[2]==A[3]
  puts "Bad"
else
  puts "Good"
end 