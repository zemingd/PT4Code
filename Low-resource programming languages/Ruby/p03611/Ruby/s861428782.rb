_n = gets.to_i
as = gets.split.map(&:to_i)
ar = Array.new(10**5 +1, 0)
as.each {|a| ar[a] += 1}
puts as.uniq.map{|o| ar[o-1] + ar[o] + ar[o+1]}.max