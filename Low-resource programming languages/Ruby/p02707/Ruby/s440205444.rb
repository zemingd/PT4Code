n=gets.to_i
b=gets.split.map(&:to_s)

(1..n).each{|n| puts b.count(n)}