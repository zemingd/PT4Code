n = gets.to_i
hash = Hash.new(0)
n.times do
  s = gets.chomp
  hash[s] += 1
end
arr = []
i = 0
temp = 0
hash.sort_by{|k,v| -v}.each do |k,v|
  if v < temp && i > 0
    break
  end
  arr << k
  temp = v if i.zero?
  i += 1
end
puts arr.sort
