N = gets.to_i
ans = 'Yes'
S = []
l = nil
N.times{
  s = gets.chomp
  if S.include?(s) || ((not l.nil?) && s[0] != l) then
    ans = 'No'
  else
    S << s
    l = s[-1]
  end
}

puts ans
