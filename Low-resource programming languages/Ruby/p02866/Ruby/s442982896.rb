M = 998244353
n = gets.to_i
list = gets.split.map(&:to_i)

def solver(n, list)
  return 0 if list[0] != 0
  list.sort!
  ary = [0]*(list[-1] + 1)
  0.upto(n - 1){|i| ary[list[i]] += 1 }
  return 0 if ary[0] > 1
  ret = 1
  1.upto(ary.length - 1){|i|
    return 0 if ary[i] == 0
    ret *= ary[i - 1] ** ary[i]
  }
  return ret % M
end

puts solver(n, list)
