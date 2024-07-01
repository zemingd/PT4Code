def printer(n, s, v)
  abc_index = s.index('ABC')
  return v if abc_index == nil
  s[abc_index, 3] = 'ZZZ'
  next_abc_index = s.index('ABC')
  return v+1 if next_abc_index == nil
  printer(n, s, v+1)
end
n = gets.chop.split.map(&:to_i)
s = gets.chop
print printer(n, s, 0)