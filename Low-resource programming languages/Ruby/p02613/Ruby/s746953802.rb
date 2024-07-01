ans = Hash.new{|h, k| h[k] = 0}
gets.to_i.times{
  ans[gets.chomp] += 1
}

["AC", "WA", "TLE", "RE"].each{|s|
  puts s + " x " + ans[s].to_s
}
