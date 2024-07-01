require "prime"
N = gets.to_i
A = gets.split.map(&:to_i)

a = A.map{|x| Prime.prime_division(x).to_h}
keys = a.map{|h| h.keys}.flatten.uniq
b = (0...N).map do |i|
  keys.map{|key| [key, a.reject.with_index{|h,j| i == j}.map{|h| h.fetch(key, 0)}.min]}.to_h
end

puts b.map{|h| h.inject(1){|s,(k,v)| s * k ** v}}.max