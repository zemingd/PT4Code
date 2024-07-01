n,m,c=gets.chomp.split(" ").map(&:to_i);

b=gets.chomp.split(" ").map(&:to_i);

a=[]

1.upto(n) do |i|
  a[i]=gets.chomp.split(" ").map(&:to_i);
end

answer = 0

def func1 b,a,c

  sum = 0
  b.each_with_index do |b1,i|
    sum+=b1*a[i]
  end
  sum += c
end

1.upto(n) do |i|
  if func1(b,a[i],c) > 0 
    answer+=1
  end
  puts func1(b,a[i],c)
end


print answer
