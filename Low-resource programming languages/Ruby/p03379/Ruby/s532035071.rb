n = gets.chomp.to_i
ary = gets.chomp.split.map(&:to_i)

# iは飛ばす番号
for i in 0..n-1 do
  tmp = []
  for j in 0..n-1 do
    if i != j then
      tmp << ary[j]
    end
  end
  tmp.sort!
  puts(tmp[n/2-1])
end
