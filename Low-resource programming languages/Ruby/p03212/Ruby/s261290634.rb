S = gets
d = S.size-1
N=S.to_i
set=[3,5,7]
x=0
(d-2).times do |i|
  set.repeated_permutation(i+3) do |e|
    y=e.join.to_i
    break if y>N
    x+=1 if e.uniq.size>=3
  end
end

p x