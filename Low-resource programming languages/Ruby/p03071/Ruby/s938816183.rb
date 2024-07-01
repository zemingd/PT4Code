#!/usr/bin/env ruby
# https://atcoder.jp/contests/abc124/submissions/4963013

N, K = gets.split(' ').map(&:to_i)
S = gets.chomp

now = 1
count = 0
nums = []

N.times do |i|
  if S[i] == (0 + now).to_s
    count += 1
  else
    nums.push(count)
    now = 1 - now
    count = 1
  end
end

nums.push(count) if count != 0
nums.push(0) if nums.size.even?

add = 2 * K + 1
# C++ の vector<int> 変数名(要素数) は全部 0 で初期化するらしい
sum = [0]

nums.size.times do |i|
  sum[i + 1] = sum[i] + nums[i]
end

ans = 0

nums.size.times do |i|
  next if i.odd?

  left = i
  right = [i + add, nums.size].min

  tmp = sum[right] - sum[left]
  ans = [tmp, ans].max
end

puts ans