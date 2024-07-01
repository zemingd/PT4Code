#!/usr/bin/env ruby
# frozen_string_literal: true

S = gets.chomp.chars
T = gets.chomp.chars

checker = 1
(0..S.length - 1).each do |i|
  if S[i] != T[i]
    checker = 0
    break
  end
end

if checker == 0
  puts 'No'
else
  puts 'Yes'
end

