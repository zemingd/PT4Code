n = gets.to_i
as = [].tap { |array| n.times { array << gets.to_i } }
hash = {}
as.each do |a|
  hash[a] = hash[a] ? nil : 1
end

puts hash.select { |k,v| v }.size
