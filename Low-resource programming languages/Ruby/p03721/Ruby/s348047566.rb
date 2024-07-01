n,k = gets.split.map(&:to_i)
ab = Array.new(n,[])
n.times do |i|
  ab[i] = gets.split.map(&:to_i)
end
ab.sort_by! do |ab_i|
  ab_i[0]
end
result = []
count = 0
ab.each do |ab_i|
  ab_i[1].times do
    result << ab_i[0]
    count += 1
    puts result[k-1] if count == k
  end
end