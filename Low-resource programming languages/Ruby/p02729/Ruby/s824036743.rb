n,m=gets.chomp.split.map(&:to_i)
answer=0
if n>=2
  answer +=n*(n-1)/2
end  
if m>=2
  answer +=m*(m-1)/2
end  
puts answer