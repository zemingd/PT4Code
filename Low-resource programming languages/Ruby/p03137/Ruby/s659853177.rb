n, m = gets.chomp.split.map(&:to_i)
k = gets.chomp.split.map(&:to_i).sort
# p k
# n>=Mのときは単純に初期状態でm箇所にn個置けるので0
if n>=m
  puts 0
  exit
end

# となりあう二つの要素の差（m-1個ある）
arr = Array.new(m-1, 0)
(m-1).times do |idx|
  arr[idx] =(k[idx] - k[idx+1]).abs
end
# 差の大きいところから順にコマを置くことにすればいい
arr.sort!.reverse!
# p arr
# p [0, arr[n, arr.size-n]]
p [0, arr[n-1, arr.size-n+1].inject(&:+)].max