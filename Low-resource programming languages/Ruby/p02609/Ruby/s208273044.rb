require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
n = gets_i
x = gets.chomp.split("")

# n = 2 * (10 ** 5)
# x = ["1"] * (10 ** 5)

def f(n)
  count = 0
  loop do
    break if n == 0
    sn = n.to_s(2)
    pcount = sn.count("1")
    n = n % pcount
    count += 1
  end
  puts count
end

0.upto(n-1) do |i|
  sx = x.dup
  if sx[i] == "0"
    sx[i] = "1"
  else
    sx[i] = "0"
  end

  n = sx.join.to_i(2)
  # p [sx.join, n]

  f(n)
end
