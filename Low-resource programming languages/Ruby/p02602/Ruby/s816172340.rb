n, k = gets.split.map { |t| t.to_i }
a    = gets.split.map { |t| t.to_i }

s = b = a.first(k).sum

(k ... n).each do |i|
  
  s += a[i] - a[i-k]
  
  if b < s
    puts "Yes"
  else
    puts "No"
  end
  
  b = s
end