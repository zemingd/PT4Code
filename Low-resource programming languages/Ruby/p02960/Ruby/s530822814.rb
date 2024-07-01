MOD = 10**9+7
s = gets.chomp.split("")
len = s.length
num = Array.new(len+1).map{Array.new(13,0)}

num[0][0] = 1

for i in 0..len-1
  tmp = Array.new(13,0)
  tmp2 = num[i]
  if s[i] == "?"
    13.times do |k|
      #やけくそ
      tmp[(k*10)%13] += tmp2[k]
      tmp[(k*10+1)%13] += tmp2[k]
      tmp[(k*10+2)%13] += tmp2[k]
      tmp[(k*10+3)%13] += tmp2[k]
      tmp[(k*10+4)%13] += tmp2[k]
      tmp[(k*10+5)%13] += tmp2[k]
      tmp[(k*10+6)%13] += tmp2[k]
      tmp[(k*10+7)%13] += tmp2[k]
      tmp[(k*10+8)%13] += tmp2[k]
      tmp[(k*10+9)%13] += tmp2[k]
    end
  else
    j = s[i].to_i
    13.times do |k|
      tmp[(k*10+j)%13] += tmp2[k]
    end
  end
  13.times do |k|
    tmp[k] %= MOD
  end
  num[i+1] = tmp
end

puts num[len][5]