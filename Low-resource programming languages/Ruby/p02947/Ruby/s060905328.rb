N = gets.chomp.to_i
M = N-1
restaurants = []
for i in 1..N do
    sp = gets.chomp.chars.sort.join('')
    restaurants << sp
end


count_hash = Hash.new(0)
 
restaurants.each do |a|
  count_hash[a] += 1
end
 
result = 0
count_hash.each_value do |culc|
  result += culc*(culc-1) / 2
end
 
p result