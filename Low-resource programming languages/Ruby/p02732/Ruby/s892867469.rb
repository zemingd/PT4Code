N = gets.to_i
A = gets.chomp.split(" ").map(&:to_i)

C = Hash.new{|h, k| h[k] = 0}
A.each{|a| C[a] += 1}
wk = 0
C.each{|k, v|
  wk += (v*(v-1))/2
}

A.each{|a|
  puts wk - (C[a] - 1)
}
