h = {"AC" => 0, "WA" => 0, "TLE" => 0, "RE" => 0}
gets.to_i.times {h[gets.chomp] += 1}
h.each {|k,v| puts k + " x #{v}"}