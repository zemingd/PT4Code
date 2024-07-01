def serch(l, min, len)
  if len == 0
    0
  elsif len == 1
    l[0] > min ? 1 : 0
  elsif l[len/2] > min
    len/2 + 1 + serch(l[len/2+1..len-1],min,len-len/2-1)
  else
    serch(l[0..len/2-1],min,len/2)
  end
end


n = gets.to_i
l=gets.chomp.split(" ").map(&:to_i)

l = l.sort.reverse
ans = 0
for i in 0..n-3
  for j in i+1..n-2
    ans += serch(l[j+1..n-1],l[i]-l[j],n-j-1)
  end
end

puts ans
