n = gets.to_i
s={}
n.times do
  a = gets.to_i
  if s[a]
    s[a] += 1
  else
    s[a] = 1
  end
end
a=0
s.each{|x, v|
  a+=1 if v%2==1
}
p a