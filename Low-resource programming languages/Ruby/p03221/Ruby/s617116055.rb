n, m = gets.split.map(&:to_i)
ary = m.times.map { |i| gets.split.map(&:to_i) + [i] }.sort
ans = []
prev_pref = nil
count = nil
ary.each do |pref, year, index|
  if pref != prev_pref
    count = 1
  end
  ans[index] = "%06d%06d" % [pref, count]
  prev_pref = pref
  count += 1
end
puts ans
