H,W=gets.split.map(&:to_i)
s=$<.read.tr("#.\n",'10').to_i 2
puts [1,-1,W+1,-W-1].inject(0){|r,x|r|=(s << x) & s} == s ? "Yes" : "No"