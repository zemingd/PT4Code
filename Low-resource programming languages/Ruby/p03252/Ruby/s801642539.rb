ss = gets.chars.sort
ts = gets.chars.sort
su = ss.uniq
tu = ts.uniq
ans_s = []
ans_t = []
su.each do |s|
  ans_s << ss.count{|i| i == s}
end
tu.each do |t|
  ans_t << ts.count{|i| i == t}
end
puts ans_s.sort == ans_t.sort ? "Yes" : "No"
