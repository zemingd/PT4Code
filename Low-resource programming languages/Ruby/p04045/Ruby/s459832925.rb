N,K = gets.split.map(&:to_i)
D = gets.split.join
regex = Regexp.new("[#{D}]")
p (N..N+100000).to_a.find{ |a|
  !a.to_s.match(regex)
}