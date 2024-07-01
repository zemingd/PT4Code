n=gets.chomp.to_i;
p=gets.chomp.split(" ").map(&:to_i);

count = 1
for i in 1..n-1
  j = 0
  t = 0
  while p[i] <= p[j] && t < i
     j = j+1
     t = t+1
  end
  if t == i
    count = count + 1
  end
end

puts count 