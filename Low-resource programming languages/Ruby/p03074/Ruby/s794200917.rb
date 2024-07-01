n,k = gets.chomp.split().map(&:to_i)
s = gets.chomp.split(//)

array = []
current = s.first
count = 0
array.push 0 if s.first == '0'
s.each do |c|
  if c == current
    count += 1
  else
    array.push count
    current = c
    count = 1
  end
end
if count > 0
  array.push count
end
array.push 0 if s.last == '0'

#p ['ar', array]

if array.size/2 - k < 0
  puts array.inject(:+)
  exit
end


ans = 0
tmpans = 0
(array.size).times do |i|
  if i <= k * 2
    ans += array[i]
    tmpans = ans
  else
    if i.even?
      #p [i-1, i, i-k*2-2, i-k*2-1]
      #p [tmpans, array[i-1], array[i], array[i-k*2-2], array[i-k*2-1]]
      tmpans = tmpans + array[i-1] + array[i] - array[i-k*2-2] - array[i-k*2-1]
      ans = [ans, tmpans].max
    end
  end
  #p ['tm', tmpans, 'ans', ans]
end

puts ans
