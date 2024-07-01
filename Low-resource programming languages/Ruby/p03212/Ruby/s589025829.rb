#!/usr/bin/env ruby

max = gets.to_i

def include357?(arr)
  arr.include? 3 and arr.include? 5 and arr.include? 7
end

puts %w(0 3 5 7).repeated_permutation(9).lazy
  .select {|arr| arr.include?('3') and arr.include?('5') and arr.include?('7') }
  .map {|arr| arr.join.to_i }
  .take_while {|i| i <= max }
  .to_a
  .count
