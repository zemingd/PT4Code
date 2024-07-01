require 'prime'
N=gets.to_i
A=gets.split.map(&:to_i)

prime_divs=[]
A.each do |a|
  prime_divs.push(Prime.prime_division(a).map {|p, e| [p] * e }.flatten)
end

anss=[]
array=[]
N.times do |i|
  array.replace(prime_divs)
  array.delete_at(i)
  anss.push(array.inject(:&).inject(:*))
end

p anss.max
