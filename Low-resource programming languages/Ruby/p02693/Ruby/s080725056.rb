k=gets.to_i
a,b=gets.split.map(&:to_i)
puts b-a+1>=k ? "OK":"NG"
