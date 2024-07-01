
n = gets.to_i
x=gets.split.map(&:to_i)
sum = 0
tmp = 1000000

1000000.times do |i|
  n.times do |j|
  sum+=(x[j]-i)*(x[j]-i)
  end
  if tmp>= sum
    tmp=sum
  end
  sum=0
end

print(tmp)