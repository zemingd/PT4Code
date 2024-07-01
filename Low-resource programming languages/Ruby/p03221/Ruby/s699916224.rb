n, m = gets.split.map(&:to_i)
query = m.times.map.with_index { |_, id| gets.split.map(&:to_i) << id }
pre = -1
cnt = 0
query.sort_by! { |s| s[1] }.sort_by! { |s| s[0] }.map! do |s|
  if s[0] != pre
    pre = s[0]
    cnt = 1
  else
    cnt += 1
  end
  s << cnt
end
query.sort_by { |s| s[2] }.each { |s| puts "%06d%06d" % [s[0], s[3]] }
