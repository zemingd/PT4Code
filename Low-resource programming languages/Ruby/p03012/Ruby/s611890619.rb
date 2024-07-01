n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)
sum = 0
log = []

arr.each {|n|
  sum += n
  log << sum
  }
puts log.map{|n| (sum - 2*n).abs}.min