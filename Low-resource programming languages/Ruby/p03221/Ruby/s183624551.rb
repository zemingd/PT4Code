n, m = gets.split.map(&:to_i)
cities = m.times.map{ gets.split.map(&:to_i) }.map.with_index{ |a, i| a.unshift(i) }
cities.sort!{ |a, b| (a[1] <=> b[1]).nonzero? || (a[2] <=> b[2]) }
p cities
ans = []
k = 1
pref = 1
cities.each do |i, p, y|
  if pref != p
    pref = p
    k = 1
  end
  ans << [i, p.to_s.rjust(6, '0') + k.to_s.rjust(6, '0')]
  k += 1
end
ans.sort_by{ |i, _| i }.each{ |_, s| puts s }
