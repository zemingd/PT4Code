#!/usr/bin/env ruby

max = gets.to_i
# max = 3600

def include_only_357?(num)
  str = num.to_s
  str.include?('3') && str.include?('5') && str.include?('7') && !str.include?('0')
end

puts %w(0 3 5 7).repeated_permutation(9).lazy
  .map(&:join).map(&:to_i)
  .select(&method(:include_only_357?))
  .take_while {|i| i <= max }
  .count
