n,k=gets.split.map &:to_i
s=gets.to_s
ss=''
(1..s.size-1).each do |i|
  if i==k
    ss<<s[i-1].swapcase!
  else
    ss<<s[i-1]
  end
end
puts ss