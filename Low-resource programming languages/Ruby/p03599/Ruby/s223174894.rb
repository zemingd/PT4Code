input = gets.split(' ')
@a = input[0].to_i
@b = input[1].to_i
@c = input[2].to_i
@d = input[3].to_i
@e = input[4].to_i
@f = input[5].to_i

result = [0,0]
ans=[0,0]

def check(result)
  if result[0]+result[1] < @f && result[1]/result[0] < @e/100
    true
  else
    false
  end
end

def put(num,result)
  case num
    when 1
      result[0] += 100*@a
      result[1] += @d
    when 2
      result[0] += 100*@a
      result[1] += @c
    else
      false
  end
end

flag = true

while flag
  put(1,result)
  flag = check(result)
  if flag
    ans = result
    p 'あ'
  end
end

result = ans
put(2,result)
flag = check(result)

if flag
  while flag
    put(2, result)
    flag = check(result)
    if flag
      ans = result
    end
  end
else
end

p (ans[0]+ans[1]).to_s+' '+ans[1].to_s