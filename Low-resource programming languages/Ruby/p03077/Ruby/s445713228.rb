n=gets.to_i
a=10**20
ma=0
for i in 1..5
  a=[a,gets.to_i].min
end
puts (n+a-1)/a+4