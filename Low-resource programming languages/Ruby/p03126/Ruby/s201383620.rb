n,m = gets.split.map(&:to_i)
hash = Hash.new(0)
n.times do
  k,*a = gets.split.map(&:to_i)
  a.each do |aa|
    hash[aa] += 1
  end
end
sum = 0
hash.sort_by{|k,v| -v}.each do |k,v|
  if v == n
    sum += 1
  end
end
puts sum