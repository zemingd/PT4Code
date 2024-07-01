  n, total = gets.split(' ').map(&:to_i)
  arr = n.times.map {|e| gets.to_i }
  pic = (total - arr.sum) / arr.min
  
  puts  arr.size + pic
