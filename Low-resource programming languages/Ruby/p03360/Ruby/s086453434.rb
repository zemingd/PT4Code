a,b,c=gets.split.map(&:to_i)
arr=[a,b,c]
k=gets.to_i

puts a+b+c+arr.max*(2**k-1)