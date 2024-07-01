n=gets.to_i


def factor(num)
  result = []
  i = 2
  while i <= num do
    if num % i == 0
      result << i
      num = num / i
    else
      i += 1
    end
  end
  return result
end
a=factor(n)

diva=1
count=[]
for i in 0..a.length-1
diva=diva*a[i]
b=n.div(diva)

diva_s=diva.to_s
b_s=b.to_s
if diva_s.length>b_s.length
    count.push(diva_s.length)
else
    count.push(b_s.length)
end
end
p a.inject(&:*)
puts count.min