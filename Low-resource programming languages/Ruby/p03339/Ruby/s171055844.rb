N=gets.chomp!.to_i
S=gets.chomp!

ans = 1000000000

for i in 0..N do
  a = S.slice(0, i).delete('E').size
  b = S.slice(i, N).delete('W').size
  ans = [
    ans,
    a + b
  ].min
end

p ans