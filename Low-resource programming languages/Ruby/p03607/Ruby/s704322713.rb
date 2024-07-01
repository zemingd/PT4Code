A = $<.map(&:to_i)
N = A.shift
puts A.group_by(&:itself).count{|k,v| v.size.odd? }
