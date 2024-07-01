n,k = gets.chomp.split(" ").map(&:to_i)

d = gets.chomp.split(" ").map(&:to_i)

a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

for i in 0..k-1
  a.delete(d[i])
end

str = n.to_s
len = str.length

shiftflg = false
for i in 0 .. len-1
  if shiftflg #繰り上げ判定で+1
    shiftflg = false
    after_pls1 =  str[len-1-i].to_i + 1
    if after_pls1 >= 10
       shiftflg = true
       after_pls1 = 0
    end
    str[len-1-i] = after_pls1.to_s
  end

  while !a.include?(str[len-1-i].to_i) #含まれていなかったら
    #+1をする. ただし,10をこしたら繰り上げフラグをたてる
    after_pls1 =  str[len-1-i].to_i + 1
    if after_pls1 >= 10
       shiftflg = true
       after_pls1 = 0
    end
    str[len-1-i] = after_pls1.to_s
  end
end
if shiftflg
  str.unshift("1")
  while a.include?(str[0].to_i) #含まれていたら+1をする.
    after_pls1 =  str[0].to_i + 1
    str[0] = after_pls1.to_s
  end
end

print str