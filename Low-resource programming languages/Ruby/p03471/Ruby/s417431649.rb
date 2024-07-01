#!/usr/bin/env ruby

if $0 == __FILE__
  N, Y = gets.split(' ').map &:to_i
  # i:    1000円札の数
  # j-i:  50000円札の数
  # N-j:  1000円札の数
  (0..N).each do |i|
    (i..N).each do |j|
      if Y == 1000*i + 5000*(j-i) + 10000*(N-j)
        puts "#{N-j} #{j-i} #{i}"
        exit
      end
    end
  end

  puts "-1 -1 -1"
end
