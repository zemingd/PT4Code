h = Hash.new(0)
gets
$<.each{|s| h[s.chomp] += 1 }
%w(AC WA TLE RE).each{|s| puts "#{s} x #{h[s]}" }
