N = gets.to_i
as = gets.split.map(&:to_i)

hash = Hash.new(0)
as.each do |a|
  hash[(a-1).to_s] += 1
  hash[a.to_s] += 1
  hash[(a+1).to_s] += 1
end

puts hash.max_by { |k, v| v }[1]