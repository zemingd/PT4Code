require 'prime'

N=gets.chomp.to_i


def num(a)
  k=1
  for temp in a do
    k *= temp[1]+1
  end

  return k

end

k=0

N.times do |i|
  if num((i+1).prime_division) == 8 && (i+1)%2 != 0
     k+=1
  end
end

puts k