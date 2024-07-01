n, k = gets.chomp.split(" ").map(&:to_i)
v = gets.chomp.split(" ").map(&:to_i)

max_value = 0
1.upto(k) do |n_fetch|
  next if n_fetch > n
  0.upto(n_fetch) do |l_fetch|
    r_fetch = n_fetch - l_fetch
    l = v.first(l_fetch)
    r = v.last(r_fetch)
    vv = l.concat(r)
    cancel_v = vv.select {|v| v < 0}.sort.first(k - n_fetch).inject(&:+) || 0
    total_value = vv.inject(&:+) - cancel_v
    max_value = total_value if max_value < total_value
  end
end
puts max_value
