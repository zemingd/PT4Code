N = gets.to_i
A = gets.split.map(&:to_i)

ans = 0
ls = A.each_with_object({}).with_index(1) {|(a,r),i| r[a] = i }
a = ls.keys.sort
(a.size-1).downto(1) do |i|
  j = i - 1
  while j >= 0
    break if a[i] % a[j] == 0
    j -= 1
  end
  if j < 0
    ans = ls[a[i]]
    break
  end
end
puts ans