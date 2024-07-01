a = gets.chomp.to_i
cnt = 10**5

for i in 1..10**5
  t = (a / i).to_s
  #p t
  u = i.to_s
  #p u
  if t.length <= u.length 
  s = u.length
  else
    s = t.length
  end
  if cnt >= s
    cnt = s
  end
  #puts s
end
puts cnt
  