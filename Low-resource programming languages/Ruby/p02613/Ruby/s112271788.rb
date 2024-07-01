n = gets.to_i
s = n.times.map {|_| gets.chomp}.group_by{|i| i}

["AC", "WA", "TLE", "RE"].each do |a|
  print "#{a} x #{s[a].to_a.length}\n"
end