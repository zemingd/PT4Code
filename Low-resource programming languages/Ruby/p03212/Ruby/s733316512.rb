n = gets.to_i
ans = 0
i = 3
while i < 10
[3,5,7].repeated_permutation(i).each do |perm|
  if perm.uniq.size == 3 && perm.join.to_i <= n
    ans += 1
  end
end
i += 1
end
puts ans