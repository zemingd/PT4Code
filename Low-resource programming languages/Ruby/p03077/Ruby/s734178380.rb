n=gets.to_i
a=10**20
ma=0
for i in 1..5
  a=[a,gets.to_i].min
  ma=[ma,(n+a-1)/a+(6-i)].max
end
puts ma