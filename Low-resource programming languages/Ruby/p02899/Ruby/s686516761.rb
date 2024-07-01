n = gets.to_i
arr = gets.chomp.split(' ').map{ |i| i.to_i - 1 }
results = Array.new(n)

(0...n).each do |i|
  results[arr[i]] = i + 1
end
puts results.join(' ')