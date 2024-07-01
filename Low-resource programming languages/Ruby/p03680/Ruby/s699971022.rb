N = gets.to_i

a = N.times.map{gets.to_i}
a.unshift(0) #1-indexed

i = 1
count = 0

N.times do |i|
  if a[i] == 2
    count += 1
    puts count
    exit
  else
    count += 1
    i = a[i]
  end
end

puts -1
