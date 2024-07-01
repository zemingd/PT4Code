l, r = gets.split(" ").map(&:to_i)
ans = []
mod = 2019
l = l % mod
r = r % mod

for i in l..r-1 do
  for j in i+1..r do
    ans << (i % mod) * (j % mod)
  end
end
puts ans.min
      