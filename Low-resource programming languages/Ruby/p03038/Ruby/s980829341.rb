n, m = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i).sort.reverse
bc =[]

0.step(m - 1) do |i|
  k = gets.chomp.split.map(&:to_i)
  bc.push({b: k[0], c:k[1]})
end

bc = bc.sort_by {|h| -1 * h[:c]}

ite_bc = 0
ite_a = 0
ans = 0

0.step(n - 1, 1) do |_i|
  if a[ite_a].to_i < bc.dig(ite_bc, :c).to_i
    ans += bc[ite_bc][:c]
    if bc[ite_bc][:b] == 1
      ite_bc += 1
    else
      bc[ite_bc][:b] -= 1
    end
  else
    ans += a[ite_a]
    ite_a += 1
  end
end
p ans