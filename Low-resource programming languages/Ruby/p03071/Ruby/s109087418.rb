n, k = gets.split(' ').map{|a|a.to_i}
s = gets.to_s.chomp

que = []
counter = ''
s.chars.each do | c |
  if counter == ''
    counter = c
    next
  end
  if counter[0] == c
    counter = counter + c
  else
    que << counter.size
    counter = c
  end
end
que << counter.size if counter.size > 0

max = 0
len = 2*k+1
0.upto(que.size-1) do | i |
  nums = que.slice(i, len)
  sum = 0
  nums.each do | num |
    sum += num
  end
	max = sum if sum > max
end
puts max