x = gets.chop.to_i

def judge(n)
  flag = true
  (1..n).each do |i|
    next if i == 1 || i == n
    if n % i == 0
      flag = false
    end
  end

  return flag
end

ans = 0
i = x

loop do
  if judge(i)
    ans = i
    break
  end
  i += 1
end

puts ans
