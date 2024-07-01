require 'prime'
a,b=gets.split.map(&:to_i).sort
if a==1
  p 1
  exit
end
c = 1
(a ** 0.5).floor.times do |i|
  if a%(i+1)==0 && b%(i+1)==0 && Prime.prime?(i+1)
    c += 1
  end
  j = a/(i+1)
  if a%j==0 && b%j==0 && Prime.prime?(j)
    c += 1
  end
end
p c