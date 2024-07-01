n=gets.to_i
l=gets.split.map(&:to_i)
r=0
def tri(i,j,k)
  return true if i<j+k and j<i+k and k<i+j
  false
end
l.combination(3){|i,j,k|r+=1 if tri(i,j,k)}
puts r