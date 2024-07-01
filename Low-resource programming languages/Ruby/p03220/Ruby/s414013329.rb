N,T,A,*hs=$<.read.split.map(&:to_i)

ret = hs.map.with_index {|h,i| [(T-h*0.006-A).abs,i]}.min[1] + 1
puts ret

# n = 0
# d = 10**9
# hs.each.with_index do |h,i|
#     t = T-h*0.006
#     t = (A-t).abs
#     if t < d
#         n = i
#         d = t
#     end
# end

# puts n+1
