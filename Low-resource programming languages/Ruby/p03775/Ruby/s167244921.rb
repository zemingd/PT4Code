n = gets.chomp.to_i
max = Math.sqrt(n).to_i
result = Math.log10(n).to_i + 1
max.times do |i|
  i = i+1
  next if n % i > 0
  r = Math.log10(n / i).to_i + 1
  result = r if r < result
end
puts result