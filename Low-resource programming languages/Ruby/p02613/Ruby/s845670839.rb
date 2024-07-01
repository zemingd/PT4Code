gets
h=Hash.new 0
$<.map{|s|h[s.chomp]+=1}
%w(AC WA TLE RE).map{|s|
puts "#{s} x #{h[s]}"
}