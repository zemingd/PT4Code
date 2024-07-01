# -*- coding: utf-8 -*-

def main
  n = gets.chop.to_i
  a_arr = gets.chop.split.map(&:to_i).map {|a| a - 1 }
  b_arr = gets.chop.split.map(&:to_i)
  c_arr = gets.chop.split.map(&:to_i)

  ans = 0
  ans += b_arr[a_arr[0]]
  1.upto(n-1) do |i|
    a_cur = a_arr[i]
    a_prev = a_arr[i-1]
    ans += b_arr[a_cur]
    if a_cur - 1 == a_prev
      ans += c_arr[a_prev]
    end
  end
  puts ans
end

if __FILE__ == $0
  main
end