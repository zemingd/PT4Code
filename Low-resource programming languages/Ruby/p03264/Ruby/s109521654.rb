k = gets.to_i
no = (1..k).select{|i| i.odd?}.count
ne = (1..k).select{|i| i.even?}.count
puts no * ne
