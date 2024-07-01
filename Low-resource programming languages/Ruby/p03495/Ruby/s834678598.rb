N,K = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i)
total = {}
A.each do |i|
  unless total[i]
    total[i] = 1
  else
    total[i] = total[i] + 1
  end
end
sum = 0
if total.keys.length > K
  total = total.sort {|(k1, v1), (k2, v2)| v1 <=> v2 }
  while total.length >= K
    sum = sum + 1
    total.delete_at(0)
  end
end
p sum
