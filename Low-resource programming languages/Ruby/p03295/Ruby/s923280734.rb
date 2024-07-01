N,M = $stdin.gets.chomp.split(" ").map(&:to_i)

cnt = 0
rightest = -1
(0...M).map{ $stdin.gets.chomp.split(" ").map(&:to_i) }.sort_by{ |m| m[1] }.each{ |m|
  a,b = m
  if rightest <= a
    cnt += 1
    rightest = b
  end
  #p [a,b, rightest, cnt]
}
puts cnt