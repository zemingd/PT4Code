s=gets.split.map(&:to_i).each_slice(2).map{|a,b|a+b}.inject :-
puts %w!Balanced Left Right![s.zero? ? 0 : s/s.abs]