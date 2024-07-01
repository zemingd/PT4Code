n,m= gets.split.map(&:to_i)
array = gets.split.map(&:to_i)
array.sort!
divid = []
(m-1).times do |i|
  divid[i] = array[i+1] - array[i]
end
sum = 0
divid.sort!
if n>=m
  puts 0
elsif
  (m-n).times do |i|
    sum += divid[i]
  end
  puts sum
end
