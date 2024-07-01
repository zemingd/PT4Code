n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
sum = 0
for i in 0..n-2
  for j in i+1..n-1
    i_2 = a[i].to_s(2)
    j_2 = a[j].to_s(2)
    sum += (i_2.to_i ^ j_2.to_i).to_s.to_i(2)
  end
end
p sum%(10**9+7)
