N = gets.chomp.to_i
x = gets.chomp.split('')

def cou_n(bits)
  num = 0
  mask = 1
  while(mask != 0) do
    break if 1 << 31  == mask
    num += 1 if (bits & mask) != 0
    mask <<= 1
  end
  num
end

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
    co = cou_n(t)
    t = t%co
    tmp += 1
    if t == 0
      memo[se] = tmp
      break
    end
  end
  p memo[se]
end
