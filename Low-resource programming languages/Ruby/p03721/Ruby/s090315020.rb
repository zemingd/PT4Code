n, k = gets.split.map(&:to_i)
ab = []
n.times do
  ab.push gets.split.map(&:to_i)
end
sab = ab.sort_by { |e| e.first }
count = 0
0.upto(n-1) do |i|
  count += sab[i].last
  if count >= k
    puts sab[i].first
    exit
  end
end
