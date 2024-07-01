a=gets.chomp.split.map(&:to_i)
c=[]
b=[]
cnt=0
sum=0
for i in 0..a[0]-1
  b << i
  c << [gets.chomp.split.map(&:to_i)]
end
b=b.combination(2)

b.each do |b|
  for i in 0..a[1]-1
    sum=(c[b[0]][i]-c[b[1]][i])**2
  end
  cnt += 1 if sqrt(sum).integer?
  sum = 0
end

puts cnt
