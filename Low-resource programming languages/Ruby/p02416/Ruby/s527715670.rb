#!ruby -na
exit if $_ == "0\n"
puts $_.chomp.split("").reduce(0){|a,b|a+b.to_i}