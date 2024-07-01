def func(n,res)
  return res + n if n <6
  res+=1
  a=9**~-((0..5).find{|i|9**i>n} ||0)
  b=6**~-((0..7).find{|i|6**i>n} ||0)
  func(n-a,res)
  func(n-b,res)
end
n=gets.to_i
p func(n,0)