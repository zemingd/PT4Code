require 'prime'
n=gets.to_i
(n..Float::INFINITY).each do |i|
  p=i.prime_division
  if p.size==1&&p[0][1]==1
    p i
    break
  end
end
