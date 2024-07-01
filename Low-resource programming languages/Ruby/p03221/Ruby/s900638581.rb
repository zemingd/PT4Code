def convert_citynum(pref_num, rank)
  s_pref_num = pref_num.to_s
  s_rank = rank.to_s
  while s_pref_num.length != 6
    s_pref_num = "0" + s_pref_num
  end
  while s_rank.length != 6
    s_rank = "0" + s_rank
  end
  return s_pref_num + s_rank
end
n, m = gets.chomp!.split(' ').map(&:to_i)
data = {}
n.times do |i|
  data[i+1] = []
end
m.times do |i|
  p, y = gets.chomp!.split(' ').map(&:to_i)
  data[p] << [i+1, y]
end
result = []
data.each do |p_num, val|
  val.sort!{ |cur, nxt| cur[1] <=> nxt[1] }
  i = 0
  val = val.map do |id, year|
    i += 1
    [id, convert_citynum(p_num, i)]
  end
  result << val
end
result.flatten!(1)
result.sort!{ |cur, nxt| cur[0] <=> nxt[0] }
result.each do |val|
  puts val[1]
end