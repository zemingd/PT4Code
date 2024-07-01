#!/usr/bin/ruby
# encoding: utf-8

def countAC s
  flg = 0
  count = 0

  (0..s.length-1).each do |i|
    if s[i] == 'A' then 
      flg = 1
      
      if s[i+1] == 'C' then 
        flg += 1
      else
        flg = 0
      end
    else
      flg = 0

    end

    if flg == 2 then
      count += 1
    end

  end

  return count 
end

#main
N,Q = gets.split.map(&:to_i)
S = gets.chomp

L = Array.new(Q)
R = Array.new(Q)

(1..Q).each do |i|
  L[i],R[i] = gets.split.map(&:to_i)
end

(1..Q).each do |i|
  puts countAC(S[L[i]-1,R[i]-L[i]+1])
end
