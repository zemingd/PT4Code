n, c = gets.chomp.split(" ").map(&:to_i)

N_MAX = 10**5

rs = Array.new(c + 1){Array.new(N_MAX*2 + 2, 0)}

n.times do
  si, ti, ci = gets.chomp.split(" ").map(&:to_i)
  (si*2 - 1).upto(ti*2) do |i|
    rs[ci][i] = 1
  end
end

ans = Array.new(N_MAX*2 + 2, 0)
rs.each do |r|
  (N_MAX*2 + 2).times do |i|
    ans[i] += r[i]
  end
end
puts ans.max