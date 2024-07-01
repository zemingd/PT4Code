# input = readlines()
# n, a, b = input.shift().chomp.split("\s").map{|x| x.to_i}

s = gets().chomp

res = 'Good'
prev = nil
s.split('').each do |chr|
  res = 'Bad' if chr == prev
  prev = chr
end

puts res
