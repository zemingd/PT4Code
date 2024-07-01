#!/usr/bin/env ruby

require 'pp'

if $0 == __FILE__
  H, W = gets.split(' ').map &:to_i
  input = []
  input = H.times.map{ gets.chomp.split('') }
  black_count = 0

  queue = []
  (0...H).each do |i|
    (0...W).each do |j|
      if input[i][j] == '#'
        queue.push [i,j]
        black_count += 1
      end
    end
  end

  ans = 0
  while black_count < H * W do
    ans += 1
    tmp_queue = []

    for point in queue do
      i = point[0]
      j = point[1]

      if i-1 >= 0
        if input[i-1][j] != '#'
          input[i-1][j] = '#'
          tmp_queue.push [i-1, j]
          black_count += 1
        end
      end

      if i+1 < H
        if input[i+1][j] != '#'
          input[i+1][j] = '#'
          tmp_queue.push [i+1, j]
          black_count += 1
        end
      end

      if j-1 >= 0
        if input[i][j-1] != '#'
          input[i][j-1] = '#'
          tmp_queue.push [i, j-1]
          black_count += 1
        end
      end

      if j+1 < W
        if input[i][j+1] != '#'
          input[i][j+1] = '#'
          tmp_queue.push [i, j+1]
          black_count += 1
        end
      end
    end

    queue = tmp_queue
  end

  puts ans
end
