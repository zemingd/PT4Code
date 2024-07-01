N = gets.to_i
A = gets.chomp.split(" ").map(&:to_i)

C = Hash.new{|h, k| h[k] = 0}
A.each{|a| C[a] += 1}

A.each{|a|
  C[a] -= 1
  ans = 0
  C.each{|k, v|
    ans += (v*(v-1))/2
  }
  puts ans
  C[a] += 1
}
