N = gets.to_i
P = Hash.new{|h, k| h[k] = 0}
N.times{
  P[gets.chomp] += 1
}

c_m = P.max[1]
P.sort.each{|k, v|
  puts k if v == c_m
}
