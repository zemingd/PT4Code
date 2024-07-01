N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)
satis = 0
bef = 0

for i in A do
  if i.to_i >= 2 && (i.to_i - 1) == bef then
    satis = B[i - 1].to_i + C[i - 2].to_i + satis
  else
    satis = B[i -1].to_i + satis
  end
  bef = i.to_i
end
print satis