n = gets.chomp.to_i
a = gets.chomp.split(' ')

hash = a.each_with_object(Hash.new(0)) do |k, h|
  h[k] += 1
end

(1..n).each do |i|
  puts hash[i.to_s]
end
