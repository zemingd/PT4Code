input_nk = gets.chomp
n,m = input_nk.split.collect{ |item| item.to_i}
min = 1
max = n
m.times do |i|
  input = gets.chomp
  l,r = input.split.collect{ |item| item.to_i}
  min = l if l >= min
  max = r if r <= max
end
rsult = 0
if max >= min
  result = max - min + 1
end
puts result