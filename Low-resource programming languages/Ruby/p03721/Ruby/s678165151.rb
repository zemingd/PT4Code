n,k = gets.split.map(&:to_i)
ab = Array.new(n,[])
n.times do |i|
  ab[i] = gets.split.map(&:to_i)
end
ab.sort_by! do |ab_i|
  ab_i[0]
end
result = ""
ab.each do |ab_i|
  result += ab_i[0].to_s * ab_i[1]
end
puts result[k-1]