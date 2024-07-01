gets
h=$<.map(&:chop).tally
%w(AC WA TLE RE).map{|s|puts "#{s} x #{h[s]||0}"}