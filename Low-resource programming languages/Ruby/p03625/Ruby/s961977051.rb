n = gets.chomp.to_i
a = gets.split.map(&:to_i)
hash = {}
a.each do |i|
  if hash.has_key?(i)
    hash[i] += 1
  else
    hash[i] = 0
  end
end

array = []
hash.each do |ngo|
  if ngo[1] >= 3
    array.push(ngo[0]) 
    array.push(ngo[0])
  elsif ngo[1] > 0   
    array.push(ngo[0])
  end
end
array.sort!{|a,b|b<=>a}
puts array.size > 1 ? array[0] * array[1] : 0
