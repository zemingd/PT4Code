n, y = gets.chomp.split(" ").map(&:to_i)

for num_10000 in 0..n do
  for num_5000 in 0..(n-num_10000) do
    if 10000*num_10000 + 5000*num_5000 + 1000*(n-num_10000-num_5000) == y then
      print("#{num_10000} #{num_5000} #{n-num_10000-num_5000}")
      return
    end
  end
end
print("-1 -1 -1")
