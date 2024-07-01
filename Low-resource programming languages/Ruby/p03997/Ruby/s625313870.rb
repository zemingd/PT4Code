s = gets.chomp

def split_plus(s, tmp, results)
  if s.size == 0
    results << tmp
    return
  end

  for i in 1 .. s.size
    car = s[0, i]
    cdr = s[i, s.size - i]
    
    split_plus(cdr, tmp + car.to_i, results)
  end
end

ret = []
split_plus(s, 0, ret)

puts ret.inject(0, &:+)

