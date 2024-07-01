# frozen_string_literal: true

n, k = gets.split(' ').map!(&:to_i)

arr = gets.split(' ').map!(&:to_i).sort!.reverse!

p arr.slice(0, k).inject(:+)
