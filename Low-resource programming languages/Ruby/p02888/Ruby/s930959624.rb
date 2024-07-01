n = gets.to_s.to_i
L = gets.to_s.split.map{|t|t.to_i}.sort

ans = 0
n.times do |l|
  l.times do |m|
    # L[l] - L[m] < L[s] < L[m]
    s = L[l] - L[m]
    idx = L.bsearch_index{ |x| s < x } || n
    # idx.nil? ? next : idx.not_nil!
    d = m - idx
    ans += d if d > 0
  end
end

puts ans
