require 'prime'
puts Prime.each.lazy.select{|i|i%5==1}.take(gets.to_i).to_a.join(' ')