#!/usr/bin/env ruby

N, K = gets.chomp.split.map(&:to_i)

A = gets.chomp.split.map(&:to_i)

(N - K).times do |i|
  if A[i] < A[K + i]
    puts 'Yes'
  else
    puts 'No'
  end
end

