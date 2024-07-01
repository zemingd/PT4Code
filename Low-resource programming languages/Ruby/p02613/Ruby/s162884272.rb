N = gets.to_i
h = Hash.new(0)
S = N.times{ h[gets.chomp] += 1 }
["AC", "WA", "TLE", "RE"].each{|c| puts "#{c} x #{h[c]}"}
