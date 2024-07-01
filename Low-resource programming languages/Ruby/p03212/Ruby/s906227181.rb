n = gets.to_i
@r = 0
def rec(s, n)
  if s.count('3') > 0 && s.count('5') > 0 && s.count('7') > 0
    return if s.to_i > n
    @r += 1
  end
  return if s.to_i > n
  rec(s + '3', n)
  rec(s + '5', n)
  rec(s + '7', n)
end
rec('0', n)
puts @r