require 'pp'
n = gets.to_i
a = gets.split.map(&:to_i)
ga = a.group_by{|i| i}.map{|k, v| [k, v.length]}
a.each do |j|
  sum = 0
  ga.each do |k, l|
    t = k == j ? l - 1 : l
    sum += (t * (t - 1)) / 2
  end
  puts sum
end