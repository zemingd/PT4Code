N = gets
cnt = 0
N.length.times {|i| cnt += 1 if N[i] == "+"; cnt -= 1 if N[i] == "-" }
puts cnt