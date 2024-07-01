popcount={}
n = gets.to_i
s = gets.chomp
count = s.count('1')
kekka = {}
n.times do |i|
  tmp = count
  kazu = '0'
  if s[i] == '1'
    tmp -= 1
  else
    tmp += 1
    kazu = '1'
  end
  nums = (s[0,i] + kazu + s[i+1,n - i])
  num = nums.to_i(2)
  tmpnum = num
  popcount[num]=tmp
  res = 0
  while num != 0
    if popcount[num]
      num %= popcount[num]
    else
      pc = num.to_s(2).count('1')
      popcount[num]=pc
      num %= pc
    end
    res += 1
  end
  puts res
end