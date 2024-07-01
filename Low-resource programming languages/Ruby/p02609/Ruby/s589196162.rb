N = gets.chomp.to_i
x = gets.chomp.split('')

memo = {}

N.times do |n|
  xx=x.dup
  xx[n] = xx[n]=='0' ? '1' : '0'
  se = xx.join('').to_i(2)

  t = se
  tmp = 0
  while t != 0
    if memo[t]
      memo[se] = memo[t] + tmp
      break
    end
    ni = t.to_s(2)
    co = ni.count('1')
    t = t%co
    tmp += 1
    if t == 0
      memo[se] = tmp
      break
    end
  end
  p memo[se]
end
