n=gets.to_i
a = []
(1..n).each do |i|
  a[i] = gets.to_i
end

i = 1
(1..n).each do |t|
  i = a[i]
  if i == 2 then
    puts t
    exit
  end
end

puts "-1"
