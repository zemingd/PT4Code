h, w = gets.split.map(&:to_i)
hs = []
h.times{ hs << gets.chomp.split("") }
def del_same_line(target_ary, base_ary)
  target_ary.reject.with_index{|e, i| !base_ary[i].include?('#') || !base_ary[i].include?('.') }
end
h_del = hs
w_del = hs.transpose
hs = del_same_line(hs, h_del).transpose
hs = del_same_line(hs, w_del).transpose
hs.each{|e| puts e.inject(&:+) }
