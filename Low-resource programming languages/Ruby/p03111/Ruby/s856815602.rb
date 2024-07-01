n, a, b, c = gets.split.map(&:to_i)
l = []
n.times do
  l << gets.to_i
end

ans = 10000

(0..3).to_a.repeated_permutation(n) do |set|
  ll = [0, 0, 0]
  mp = 0
  n.times do |i|
    next if set[i] == 3

    mp += 10 if ll[set[i]] != 0
    ll[set[i]] += l[i]
  end
  next if ll.include?(0)

  mp += (ll[0] - a).abs + (ll[1] - b).abs + (ll[2] - c).abs
  ans = [ans, mp].min

end
puts ans