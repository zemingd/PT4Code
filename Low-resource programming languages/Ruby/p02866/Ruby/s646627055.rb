N = gets.to_i
D = gets.chomp.split(" ").map(&:to_i)

ans = 1
if D[0] != 0 then
  ans = 0
else
  for i in 1..(N-1) do
    if D[i] == 0 then
      ans = 0
      break
    elsif i == N - 1 then
      ans = ans * D[i]
      break
    elsif (y = D.sort.bsearch_index{|x| x >= N - 1}) && y < N - 1 then
      ans = 0
      break
    elsif D[i] >= D[i+1] then
      ans = ans * D[i]
    end
  end
end

p ans.modulo(998244353)
