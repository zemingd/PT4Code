s=gets.chomp.chars.map(&:to_i).select{|x|x>0}
k=gets.to_i

t1 = t0 = s[0]

while (s[0] == 1) && (k > 1)
  t1 = t0
  t0 = s.shift
  k-=1
end
p s[0]? s[0] : t1