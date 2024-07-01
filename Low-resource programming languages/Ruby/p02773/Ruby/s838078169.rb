N = gets.to_i
P = Hash.new{|h, k| h[k] = 0}
N.times{
  P[gets.chomp] += 1
}

c_m = P.max_by{|k, v| v}[1]
P.sort_by{|k, v| k}.each{|k, v|
  puts k if v == c_m
}
