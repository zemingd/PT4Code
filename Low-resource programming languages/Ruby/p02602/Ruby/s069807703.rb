n,k=gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split.map(&:to_i)
for i in 0..n-k-1 do
  if a[i] < a[k + i]
    puts('Yes')
  else
    puts ('No')
  end
end