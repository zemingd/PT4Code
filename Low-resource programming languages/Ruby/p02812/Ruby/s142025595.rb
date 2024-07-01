def printer(n, s, v)
  # 左端からマッチする文字を探し先頭のIndexを返す
  abc_index = s.index('ABC')
  return v if abc_index == nil
  s.slice!(abc_index, abc_index+2)
  next_abc_index = s.index('ABC')
  return v+1 if next_abc_index == nil
  printer(n, s, v+1)
end
n = gets.chop.split.map(&:to_i)
s = gets.chop
print printer(n, s, 0)