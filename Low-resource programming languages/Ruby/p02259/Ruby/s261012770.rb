#!/usr/bin/env ruby

def bubble(ary)
  flg = true
  n = ary.length
  cnt = 0

  while flg
    flg = false
    (n - 1).downto(1) do |i|
      next if ary[i] >= ary[i - 1]
      ary[i], ary[i - 1] = ary[i - 1], ary[i]
      cnt += 1
      flg = true
    end
  end

  puts ary.join(' ')
  puts cnt
end

gets

bubble(gets.chomp.split.map(&:to_i))