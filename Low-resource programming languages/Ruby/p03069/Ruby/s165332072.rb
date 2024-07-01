#!/usr/bin/ruby
# encoding: utf-8

N = gets.to_i
S = gets.chomp

th = 0

(0..N-1).each do |i|
  if S[i] == '#' && S[i+1] == '.' then
    th = i+1
    break
  end
end

# 0～i+1 までの'#'の数と
# i+2 ～ N-1 までの'.'の数をカウントすればよい。

ans1 = 0
ans2 = 0

(0..th).each do |i|
  if S[i] == '#' then 
    ans1 += 1
  end
end

(th+1..N-1).each do |i|
  if S[i] == '.' then 
    ans2 += 1
  end
end

if th == 0 then
  puts 0
elsif 
  puts ans1+ans2
end
