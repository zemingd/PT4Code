N = gets.to_i
D = gets.chomp.split(" ").map(&:to_i)
CD = 998244353

C = Array.new(N, 0)
D.each{|i|
  C[i] += 1
}

def count_condition(con)
  return 0 if con[0] != 1
  zeroflg = false
  con.each{|c|
    zeroflg = true if c == 0
    return 0 if (zeroflg == true && c != 0)
  }
  ans = 1
  (1...con.size).each{|i|
    break if i == 0
    ans *= con[i - 1] ** con[i]
    ans %= CD if ans > CD
  }
  ans
end

puts count_condition(C)
