n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
hash = {}
a.each do |i|
  hash[i-1] ? hash[i-1] += 1 : hash[i-1] = 1
  hash[i] ? hash[i] += 1 : hash[i] = 1
  hash[i+1] ? hash[i+1] += 1 : hash[i+1] = 1
end
puts hash.sort{|a,b| a[1]<=>b[1]}[-1][1]