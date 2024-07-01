a,b,k=gets.split(" ").map(&:to_i)
for i in 0...k
  puts a+i
end
for i in 0...k
  puts b-(k-i)+1
end