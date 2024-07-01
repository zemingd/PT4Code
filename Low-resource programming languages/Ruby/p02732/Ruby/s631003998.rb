n = gets.to_i
co = {}
b = gets.split.map(&:to_i)

b.each do |k|
  if co.has_key?(k)
    co[k] +=1
  else
    co[k] = 1
  end
end

sum = 0

co.each do |k, v|
  sum += v*(v-1)/2
end

b.each do |k|
  d = co[k]
  puts sum - (d*(d-1)/2) + (d-1)*(d-2)/2 
end
