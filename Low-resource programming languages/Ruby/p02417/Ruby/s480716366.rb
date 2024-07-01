a_ord = "a".ord
len = "z".ord - a_ord
table = Array.new(len + 1) { 0 }
gets.downcase.chars.select {|x| x =~ /[a-z]/ }.map {|x| x.ord - a_ord }.each {|x| table[x] += 1 }
len.times {|x| puts "#{(x + a_ord).chr} : #{table[x]}" }