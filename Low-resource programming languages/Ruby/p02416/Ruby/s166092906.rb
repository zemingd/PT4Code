sum=[]
while true
  n = gets.split("").map(&:to_i)
  break if n[0]==0
  sum << n.inject(:+)
end
puts sum