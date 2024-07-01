s = gets.chomp

def cal(c, a)
  return a if c.empty?
  p = c.shift
  if a.empty?
    return cal(c, [[p]])
  end

  new_a = []
  a.each do |arr|
    new_a << arr + ['+', p]
    new_a << arr + ['-', p]
  end

  cal(c, new_a)
end

pattern = cal(s.chars, [])
ans = pattern.find { |p| eval(p.join) == 7 }
print ans.join