def f (t,re)
  t.each{|tmp|
    if re%tmp!=0 then
      return false
    end
  }
  return true
end

N = gets.to_i
T = N.times.map{gets.to_i}

res = max = T.max

while !f(T,res) do
  res+=max
end

puts res