def solve
  s = gets.chomp
  tmp = s[0]
  cnt = 0
  (1..(s.length - 1)).each do |i|
    cnt += 1 if tmp != s[i]
    tmp = s[i]
  end

  if cnt >= 1
    print 'Yes'
  else
    print 'No'
  end
end
solve
