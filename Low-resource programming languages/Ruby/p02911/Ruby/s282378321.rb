n, k, q = gets.split(" ").map(&:to_i)
q_ls = Array.new
score_ls = Array.new(n, 0)


q.times do |i|
  i = gets.chomp!.to_i
  q_ls << i
end

#puts score_ls

q_ls.each do |s|

  score_ls[s-1] += 1
end

for i in 0..n-1 do
  f = k - (q - score_ls[i])
  if f <= 0
    print("No\n")
  else
    print("Yes\n")
  end
end