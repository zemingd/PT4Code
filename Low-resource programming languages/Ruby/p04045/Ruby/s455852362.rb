N, K = gets.chomp.split
d = gets.chomp.split.map(&:to_i)

okd = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0] - d

ans = ""
for i in 0..(N.size - 1) do
  num = N[i].to_i
  if ans == "" || ans.to_i <= N[0..(i - 1)].to_i
    oknum = okd.select {|d| d >= num }.min
  else
    oknum = okd.min
  end
  ans += oknum.to_s unless ans == "" && oknum == "0"
end

puts ans