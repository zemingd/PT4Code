require 'prime'
gets;p (r=gets.split.map(&:to_i).select(&:even?)).empty? ? 0 : r.map{|i|i.prime_division.to_h[2]}.inject(:+)
