n = gets.to_i
line = gets
data = line.split(" ")
odd = Array.new
even = Array.new
n.times do |i|
  if i % 2 == 0
    odd << data[i]
  else
    even << data[i]
  end
end
if n == 1
  puts data[0]
elsif n % 2 == 1
  odd.reverse_each do |item|
    print "#{item} "
  end
  even.each do |item|
    if item == even[even.length-1]
      print "#{item}\n"
    else
      print "#{item} "
    end
  end
else
  even.reverse_each do |item|
    print "#{item} "
  end
  odd.each do |item|
    if item == odd[odd.length-1]
      print "#{item}\n"
    else
      print "#{item} "
    end
  end
end