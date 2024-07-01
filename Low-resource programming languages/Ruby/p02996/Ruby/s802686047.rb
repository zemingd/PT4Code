require 'set'; require 'prime'
INF=Float::INFINITY
n = gets.chomp.to_i
ab = n.times.map{gets.split.map(&:to_i)}

cur = 0
ab.sort_by{|a,b| b}.each do |a, b|
  if cur + a <= b
    cur += a
  else
    puts 'No'
    exit
  end
end

puts 'Yes'