n = gets.to_i
a = gets.split.map(&:to_i)
puts ((0...n).count{|i| a[i]!=i+1}<2 ? :YES : NO)