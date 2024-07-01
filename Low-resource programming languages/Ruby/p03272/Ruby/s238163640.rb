h, w = gets.split.map(&:to_i)
hs = []
h.times{ hs << gets.chomp.split("") }
def del_same_line(target_ary)
  target_ary.reject{|e| !e.include?('#') }.transpose
end
del_same_line(del_same_line(hs)).each{|e| puts e.inject(:+)}