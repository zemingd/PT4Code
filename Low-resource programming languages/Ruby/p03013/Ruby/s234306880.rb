input1 = gets.chomp
n,m = input1.split.collect{ |item| item.to_i}
alist = []
ans = 1
maxdif = 0
m.times do |i|
  alist[i] =  gets.chomp.to_i
  before = i==0 ? 0 : alist[i-1]
  dif = alist[i] - before
  maxdif = dif if dif > maxdif
  if ((before == alist[i] -1) && (i != 0))
    ans = 0
  end
end
alist.push(n+1)

dif = alist[-1] - alist[-2]
maxdif = dif if dif > maxdif
fib = [1,1]
maxdif.times do |nn|
  fib[nn+2] = fib[nn+1] + fib[nn]
end


if ans == 0
  puts ans
else
  calclist = []
  start = 0
  alist.each do |ai|
    num = ai - start - 1
    calclist.push(fib[num])
    start = ai+1
  end
  ans = 1
  calclist.each { |pat| ans = ans * pat}
  puts ans%1000000007
end