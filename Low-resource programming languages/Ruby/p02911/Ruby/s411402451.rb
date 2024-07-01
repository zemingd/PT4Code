N, K, Q = gets.split.map &:to_i
ans = Array.new(N, K)

Q.times do
  a = gets.to_i - 1
  ans.each_with_index do |e, idx|
    ans[idx] += -1 unless idx == a
  end
end

ans.each do |e|
  if e <= 0
    puts 'No'
  else
    puts 'Yes'
  end
end