H,W = gets.chop.split(" ").map(&:to_i)
h,w = gets.chop.split(" ").map(&:to_i)

print "#{(H-h)*(W-w)}"