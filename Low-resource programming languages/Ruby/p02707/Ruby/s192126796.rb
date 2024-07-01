n = gets.to_i
array = gets.split.map(&:to_i)
hash = {}
array.each do |e|
  if hash[e]
    hash[e] += 1
  else
    hash[e] = 1
  end
end

(1..n).each do |i|
  if hash[i]
    puts hash[i]
  else
    puts 0
  end
end
